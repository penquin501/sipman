<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use App\Form\Type\CsvUploadType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\DBAL\Connection;
use Sylius\Component\Product\Repository\ProductRepositoryInterface;
use Sylius\Component\Resource\Factory\FactoryInterface;
use Sylius\Component\Core\Model\ProductInterface;
use Sylius\Component\Core\Model\ProductVariantInterface;
use Sylius\Component\Core\Repository\ChannelRepositoryInterface;
use Doctrine\Persistence\ObjectRepository;
use Sylius\Component\Core\Model\ChannelInterface;
use Sylius\Component\Core\Model\ChannelPricingInterface;
use Sylius\Component\Core\Factory\ChannelPricingFactoryInterface;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;

use Sylius\Component\Core\Model\ProductImageInterface;
use Sylius\Component\Core\Uploader\ImageUploaderInterface;
use Sylius\Component\Core\Model\ProductImage;

class SyncProductController extends AbstractController
{
    private HttpClientInterface $client;
    private Connection $connection;
    private FactoryInterface $productFactory;
    private FactoryInterface $variantFactory;
    private ProductRepositoryInterface $productRepository;
    private EntityManagerInterface $entityManager;
    private ObjectRepository $channelRepository;
    private FactoryInterface $channelPricingFactory;

    private $productImageFactory;
    private $imageUploader;
    private $taxonRepository;

    public function __construct(
        HttpClientInterface $client,
        Connection $connection,
        FactoryInterface $productFactory,
        FactoryInterface $variantFactory,
        ProductRepositoryInterface $productRepository,
        ObjectRepository $channelRepository,
        EntityManagerInterface $entityManager,
        FactoryInterface $channelPricingFactory,
        FactoryInterface $productImageFactory,
        ImageUploaderInterface $imageUploader,
        TaxonRepositoryInterface $taxonRepository
    ) {
        $this->client = $client;
        $this->connection = $connection;
        $this->productFactory = $productFactory;
        $this->variantFactory = $variantFactory;
        $this->productRepository = $productRepository;
        $this->channelRepository = $channelRepository;
        $this->entityManager = $entityManager;
        $this->channelPricingFactory = $channelPricingFactory;
        $this->productImageFactory = $productImageFactory;
        $this->imageUploader = $imageUploader;
        $this->taxonRepository = $taxonRepository;
    }

    /**
     * @Route("/admin/sipman/syncproduct", name="app_admin_custom_page", methods={"GET", "POST"})
     */
    public function index(Request $request, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CsvUploadType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var UploadedFile $file */
            $file = $form->get('csv_file')->getData();

            if ($file) {
                $originalFilename = pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME);
                $newFilename = $originalFilename.'-'.uniqid().'.'.$file->guessExtension();
                $csvDirectory = $this->getParameter('csv_directory'); // Ensure this parameter is correctly defined in services.yaml

                try {
                    $filePath = $csvDirectory.'/'.$newFilename;
                    $file->move($csvDirectory, $newFilename);

                    // $this->addFlash('success', 'File uploaded successfully!');
                    if (($handle = fopen($filePath, 'r')) !== false) {
                        // Skip the header row if your CSV file includes it
                        fgetcsv($handle);
                        
                        while (($data = fgetcsv($handle, 10000, ',')) !== false) {
                            $product = new Product();
                            // Assuming the CSV columns match the Product entity properties
                            $product->setName($data[0]); // Adjust the index based on your CSV structure
                            $product->setPrice($data[1]); // Adjust as necessary
                            // Set other properties...

                            $entityManager->persist($product);
                        }
                        fclose($handle);

                        $entityManager->flush();
                        $this->addFlash('success', 'CSV file processed successfully.');
                    }

                } catch (FileException $e) {
                    // Ensure FileException is caught correctly
                    $this->addFlash('error', 'Failed to upload file.');
                }

                // Redirect to the same route after successful upload
                return $this->redirectToRoute('app_admin_custom_page');
            }
        }

        return $this->render('bundles/SyliusAdminBundle/Sipman/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/admin/sipman/sync-wine", name="admin_sipman_sync_wine", methods={"GET"})
     */
    public function sync(): Response
    {
        $listWine = $this->fetchWineData();

        foreach ($listWine as $wine) {
            $this->syncProductToSylius($wine);
        }
        
        return $this->json(['message' => 'Wine data synced successfully']);
    }

    private function fetchWineData(): array
    {
        $sql = 'SELECT ID, Name FROM wine limit 1';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    public function syncProductToSylius(array $wine): void
    {
        ini_set('memory_limit', '-1');
        set_time_limit(60);

        $product = $this->productRepository->findOneBy(['code' => $wine['ID']]);

        if (!$product) {
            /** @var ProductInterface $product */
            $product = $this->productFactory->createNew();
            $product->setCode($wine['ID']);
            $product->setName($wine['Name']);
            $product->setSlug($wine['ID']);
            $product->setEnabled(true);
            $this->productRepository->add($product);
        } else {
            $product->setName($wine['Name']);
            $product->setSlug($wine['ID']);
            $product->setEnabled(true);
        }

        if ($product->getVariants()->isEmpty()) {
            /** @var ProductVariantInterface $variant */
            $variant = $this->variantFactory->createNew();
            $variant->setCode($wine['ID'] . '_variant');
            $variant->setName($wine['ID']);
            $variant->setProduct($product);

            $product->addVariant($variant);
        }

        $price = 1000;

        $channels = $this->channelRepository->findAll();
        foreach ($channels as $channel) {
            /** @var ChannelInterface $channel */
            if (!$product->hasChannel($channel)) {
                $product->addChannel($channel);
            }
            
            foreach ($product->getVariants() as $variant) {
                $existingChannelPricing = $variant->getChannelPricingForChannel($channel);
        
                if ($existingChannelPricing) {
                    // If it exists, simply update its price
                    $existingChannelPricing->setPrice($price);
                } else {
                    /** @var ChannelPricingInterface $channelPricing */
                    $channelPricing = $this->channelPricingFactory->createNew();
                    $channelPricing->setChannelCode($channel->getCode());
                    $channelPricing->setPrice($price);
                    $variant->addChannelPricing($channelPricing);
                }
            }
        }

        $this->addProductImage($product, $wine['ID']);

        $this->entityManager->persist($product);
        $this->entityManager->flush();
        $this->entityManager->clear();
    }

    private function addProductImage($product, $wineCode): void
    {
        $imageDirectory = $this->getParameter('kernel.project_dir') . '/public/media/image/wine';
        $imagePath = $imageDirectory . '/' . $wineCode . '.jpg';

        if (!file_exists($imagePath)) {
            return; // Image file doesn't exist
        }

        foreach ($product->getImages() as $existingImage) {
            if ($existingImage->getType() === 'main') {
                $product->removeImage($existingImage);
                $this->entityManager->remove($existingImage);
            }
        }

        /** @var ProductImageInterface $productImage */
        $productImage = $this->productImageFactory->createNew();
        $file = new \Symfony\Component\HttpFoundation\File\UploadedFile($imagePath, basename($imagePath), null, null, true);

        $productImage->setFile($file);
        $productImage->setType('main');

        $this->imageUploader->upload($productImage);

        $product->addImage($productImage);
    }

    /**
     * @Route("/admin/sipman/update-taxon-product", name="admin_sipman_update_taxons", methods={"GET"})
     */
    public function updateTaxons(): Response
    {
        ini_set('memory_limit', '-1');
        set_time_limit(600);
        try {
            $batchSize = 20; 
            $i = 0;
            // $products = $this->productRepository->findBy(['code' => 'WIN-00078']); //debug
            $products = $this->productRepository->findAll();
            foreach ($products as $product) {
                $wine = $this->getWineByProductCode($product->getCode());
                if($wine) {
                    $slug = strtolower($wine[0]['Type'].'-'.$wine[0]['Country']); 
                    $taxon = $this->taxonRepository->findOneBy(['code' => $slug]);

                    if (!$taxon) {
                        continue; // Skip this product if its taxon is not found
                    }

                    $product->setMainTaxon($taxon);
                }
                
                if (($i % $batchSize) === 0) {
                    $this->entityManager->flush(); // Apply changes to the database
                    $this->entityManager->clear(); // Detach all objects from Doctrine
                }
    
                $i++;
            }

        
            $this->entityManager->flush();
            $this->entityManager->clear();
        } catch (\Exception $e) {
            // Log the error or handle it accordingly
            return $this->json(['error' => 'Failed to update taxons: ' . $e->getMessage()]);
        }
        
        return $this->json(['message' => 'completed update taxon in product']);
    }

    private function getWineByProductCode($productCode) {
        $sql = "SELECT * FROM wine WHERE ID = ?";
        $stmt = $this->connection->executeQuery($sql, [$productCode]);

        return $stmt->fetchAllAssociative();
    }

}