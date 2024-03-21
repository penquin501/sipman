<?php

namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use Doctrine\DBAL\Connection;
use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Product\Repository\ProductRepositoryInterface;
use Sylius\Component\Resource\Factory\FactoryInterface;
use Sylius\Component\Core\Model\ProductInterface;
use Sylius\Component\Core\Model\ProductVariantInterface;
use Sylius\Component\Core\Repository\ChannelRepositoryInterface;
use Doctrine\Persistence\ObjectRepository;
use Sylius\Component\Core\Model\ChannelInterface;
use Sylius\Component\Core\Model\ChannelPricingInterface;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;
use Sylius\Component\Core\Model\ProductImageInterface;
use Sylius\Component\Core\Uploader\ImageUploaderInterface;
// use Sylius\Component\Core\Model\ProductImage;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Sylius\Component\Product\Factory\ProductVariantFactoryInterface;
use Sylius\Component\Core\Factory\ChannelPricingFactoryInterface;
use App\Entity\Product\ProductImage;

#[AsCommand(
    name: 'app:sync-product',
    description: 'Add a short description for your command',
)]


class SyncProductCommand extends Command
{
    protected static $defaultName = 'app:sync-product';
    private Connection $connection;
    private FactoryInterface $productFactory;
    private ProductRepositoryInterface $productRepository;
    private EntityManagerInterface $entityManager;
    private ObjectRepository $channelRepository;
    private $imageUploader;
    private $taxonRepository;
    private string $imageDirectory;
    private ProductVariantFactoryInterface $productVariantFactory;
    private FactoryInterface $channelPricingFactory;

    public function __construct(
        Connection $connection,
        FactoryInterface $productFactory,
        ProductRepositoryInterface $productRepository,
        ProductVariantFactoryInterface $productVariantFactory,
        ObjectRepository $channelRepository,
        EntityManagerInterface $entityManager,
        ImageUploaderInterface $imageUploader,
        TaxonRepositoryInterface $taxonRepository,
        FactoryInterface $channelPricingFactory,
        string $imageDirectory
    ) {
        parent::__construct();
        $this->connection = $connection;
        $this->productFactory = $productFactory;
        $this->productRepository = $productRepository;
        $this->productVariantFactory = $productVariantFactory;
        $this->channelRepository = $channelRepository;
        $this->entityManager = $entityManager;
        $this->imageUploader = $imageUploader;
        $this->taxonRepository = $taxonRepository;
        $this->imageDirectory = $imageDirectory;
        $this->channelPricingFactory = $channelPricingFactory;
    }

    protected function configure(): void
    {
        $this
            ->addArgument('arg1', InputArgument::OPTIONAL, 'Argument description')
            ->addOption('option1', null, InputOption::VALUE_NONE, 'Option description')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        ini_set('memory_limit', '-1');
        set_time_limit(6000);

        $output->writeln('Starting to syncing sipman product...');

        $listWine = $this->fetchWineData();

        foreach ($listWine as $wine) {
            $output->writeln('start synce product...'.$wine['Name']);
            $this->syncProductToSylius($wine);
        }

        $output->writeln('All sipman product sync with sylius successfully.');
        return Command::SUCCESS;
    }

    private function fetchWineData(): array
    {
        $sql = 'SELECT ID, Name FROM wine';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    public function syncProductToSylius(array $wine): void
    {
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
            $variant = $this->productVariantFactory->createNew();
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

    private function addProductImage(ProductInterface $product, string $wineCode): void
    {
        $imagePath = $this->imageDirectory . '/' . $wineCode . '.jpg';

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
        // $productImage = $this->productFactory->createNew('product_image'); // Use a factory method if available, or directly instantiate your custom ProductImage class
        $productImage = new ProductImage();
        // Set the file on the product image
        $file = new UploadedFile($imagePath, basename($imagePath), null, true);
        $productImage->setFile($file);
        $productImage->setType('main');

        // Upload the image file
        $this->imageUploader->upload($productImage);

        // Associate the image with the product
        $product->addImage($productImage);

        // Persist changes
        $this->entityManager->persist($productImage);
        $this->entityManager->flush();
    }
}
