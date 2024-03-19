<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;
use Sylius\Component\Resource\Factory\FactoryInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\DBAL\Connection;
use Doctrine\ORM\EntityManagerInterface;

class TaxonController extends AbstractController
{
    private $taxonRepository;
    private $taxonFactory;
    private HttpClientInterface $client;
    private Connection $connection;
    private EntityManagerInterface $entityManager;

    public function __construct(
        HttpClientInterface $client,
        Connection $connection,
        EntityManagerInterface $entityManager,
        TaxonRepositoryInterface $taxonRepository, 
        FactoryInterface $taxonFactory
    ) {
        $this->taxonRepository = $taxonRepository;
        $this->taxonFactory = $taxonFactory;
        $this->client = $client;
        $this->connection = $connection;
        $this->entityManager = $entityManager;
    }

    #[Route('/admin/taxon', name: 'app_admin_taxon')]
    public function index(): Response
    {
        return $this->render('admin/taxon/index.html.twig', [
            'controller_name' => 'TaxonController',
        ]);
    }

    /**
     * @Route("/admin/taxon/create", name="admin_taxon_create", methods={"GET"})
     */
    public function createTaxon(): Response
    {
        $taxons = $this->getTaxon();

        $listProduct = [];
        $listType = [];
        $listCountry = [];
        $listRegion = [];

        foreach($taxons as $taxon) {
            if (!array_key_exists($taxon['product_name'], $listProduct)) {
                $listProduct[$taxon['product_name']] = [$taxon];
            } else {
                $listProduct[$taxon['product_name']][] = $taxon;
            }
        }

        foreach($listProduct as $productCode => $taxons) {
            foreach($taxons as $taxon) {
                if (!array_key_exists($taxon['type_name'], $listType)) {
                    $listType[$taxon['type_name']] = [$taxon];
                } else {
                    $listType[$taxon['type_name']][] = $taxon;
                }
            }

            $listProduct[$productCode] = $listType;
        }

        foreach($listProduct as $productCode => $types) {
            foreach($types as $type => $taxons) {
                foreach($taxons as $taxon) {
                    if (!array_key_exists($taxon['country_country'], $listType)) {
                        $listCountry[$type][$taxon['country_country']] = [$taxon];
                    } else {
                        $listCountry[$type][$taxon['country_country']][] = $taxon;
                    }
                }
                $listProduct[$productCode][$type] = $listCountry[$type];
            }
        }

        $products = $this->getProduct();

        $allProducts = [];
        foreach($products as $product) {
            foreach($listProduct as $productName => $value) {
                if($product['Name'] == $productName) {
                    $allProducts[$product['Name']] = $value;
                } else {
                    $allProducts[$product['Name']] = [];
                }
            }
        }

        $taxonomies = [
            'Sipman' => $allProducts
        ];
        return $this->json($taxonomies);

        $rootTaxon = $this->createOrUpdateTaxon('Sipman', null, 'sipman');

        foreach ($taxonomies['Sipman'] as $category => $countries) {
            $parentTaxon = $this->createOrUpdateTaxon($category, $rootTaxon, strtolower($rootTaxon.'-'.$category));
        
            foreach ($countries as $countryName => $types) {
                
                $countryTaxon = $this->createOrUpdateTaxon($countryName, $parentTaxon, strtolower($parentTaxon.'-'.$countryName));
        
                foreach ($types as $typeName => $regions) {
                  
                    $typeTaxon = $this->createOrUpdateTaxon($typeName, $countryTaxon, strtolower($countryTaxon.'-'.$typeName));

                    foreach ($regions as $regionName => $regionDetails) {
                        if (!is_array($regionDetails)) {
                            if (isset($regionDetails['reg_name'])) {
                                $this->createOrUpdateTaxon($regionDetails['reg_name'], $typeTaxon, strtolower($parentTaxon.'-'.$countryTaxon.'-'.$typeTaxon.'-'.trim($regionDetails['reg_name'])));
                            }
                            continue;
                        }
        
                        foreach ($regionDetails as $detail) {
                            if (isset($detail['reg_name'])) {
                                $this->createOrUpdateTaxon($regionDetails['reg_name'], $typeTaxon, strtolower($parentTaxon.'-'.$countryTaxon.'-'.$typeTaxon.'-'.trim($regionDetails['reg_name'])));
                            }
                        }
                    }
                }
            }
        }
    
        return $this->json(['message' => 'Taxons have been successfully imported.']);
    }

    private function createOrUpdateTaxon(string $name, $parent, $slug)
    {
        $taxon = $this->taxonRepository->findOneBy(['code' => $name]) ?? $this->taxonFactory->createNew();
        $taxon->setCode($slug);
        $taxon->setName($name);
        $taxon->setSlug($slug);

        if ($parent) {
            $taxon->setParent($parent);
        }

        $this->taxonRepository->add($taxon);

        return $taxon;
    }

    private function getType() {
        $sql = 'SELECT * FROM type';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    private function getProduct() {
        $sql = 'SELECT * FROM product';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    private function getRegion() {
        $sql = 'SELECT * FROM region';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    private function getCountry() {
        $sql = 'SELECT * FROM country';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    private function getAppellation() {
        $sql = 'SELECT * FROM appellation';
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }

    private function getTaxon() {
        $sql = "SELECT tax.Code as tax_code, tax.Name as tax_name, tax.Slug as tax_slug,
        reg.Code as reg_code, reg.Name as reg_name, reg.Slug as reg_slug, reg.RegionFR as reg_reg_fr,
        type.Code as type_code, type.Name as type_name, type.Slug as type_slug, type.Type as type_type,
        country.Code as country_code, country.Country as country_country, country.Slug as country_slug, country.Pays as country_pays, country.TH_Country as country_th,
        product.Code as product_code, product.Name as product_name, product.Slug as product_slug, product.Produit as product_produit, product.TH_name as product_th
        FROM sipman.taxon as tax
        LEFT JOIN sipman.region as reg ON tax.Parent = reg.Code
        LEFT JOIN sipman.type as type ON tax.Parent2 = type.Code
        LEFT JOIN sipman.country as country ON reg.Parent = country.Code
        LEFT JOIN sipman.product as product ON type.Parent = product.Code
        where tax.Parent != '' and  tax.Parent2 != '' ";
        $stmt = $this->connection->executeQuery($sql);

        // Fetch all rows
        return $stmt->fetchAllAssociative();
    }
}
