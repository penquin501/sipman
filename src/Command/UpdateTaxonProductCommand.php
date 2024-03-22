<?php

namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use Sylius\Component\Product\Repository\ProductRepositoryInterface;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\DBAL\Connection;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;

#[AsCommand(
    name: 'app:update-taxon-product',
    description: 'Add a short description for your command',
)]
class UpdateTaxonProductCommand extends Command
{
    protected static $defaultName = 'app:update-taxon-product';
    private ProductRepositoryInterface $productRepository;
    private EntityManagerInterface $entityManager;
    private Connection $connection;
    private $taxonRepository;

    public function __construct(
        Connection $connection,
        EntityManagerInterface $entityManager,
        TaxonRepositoryInterface $taxonRepository,
        ProductRepositoryInterface $productRepository
    ) {
        parent::__construct();
        $this->productRepository = $productRepository;
        $this->entityManager = $entityManager;
        $this->connection = $connection;
        $this->taxonRepository = $taxonRepository;
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
        
        try {
            $output->writeln('Starting to update taxon for sipman product...');

            $products = $this->productRepository->findAll();

            foreach ($products as $product) {
                $output->writeln('start with product...'.$product->getName());

                $wine = $this->getWineByProductCode($product->getCode());
                if (!empty($wine)) {
                    $output->writeln('start with wine...'.$wine[0]['Type']);

                    if($wine && isset($wine[0]['Type'], $wine[0]['Country'])) {

                        $slug = strtolower($wine[0]['Type'].'-'.$wine[0]['Country']); 
                        $output->writeln('start with slug...'.$slug);

                        $taxon = $this->taxonRepository->findOneBy(['code' => trim($slug)]);
                        $output->writeln('start with slug...'.$slug." taxon = ".$taxon);

                        if ($taxon) {
                            $output->writeln('start with update taxon...' . $taxon->getCode());
                            $product->setMainTaxon($taxon);

                            $this->saveProductTaxon($product->getId(), $taxon->getId());
                        } else {
                            $output->writeln('<comment>No matching taxon found for slug ' . $slug . '</comment>');
                            continue;
                        }
                    }
                    
                    $this->entityManager->flush();
                } else {
                    $output->writeln('<comment>No wine found for product code ' . $product->getCode() . '</comment>');
                    continue;
                }
            }
        } catch (\Exception $e) {
            $output->writeln('<error>Failed to update taxons: ' . $e->getMessage() . '</error>');
            return Command::FAILURE;
        }

        $io->success('You have a new command! Now make it your own! Pass --help to see your options.');

        return Command::SUCCESS;
    }

    private function getWineByProductCode($productCode) {
        $sql = "SELECT * FROM wine WHERE ID = ?";
        $stmt = $this->connection->executeQuery($sql, [$productCode]);

        return $stmt->fetchAllAssociative();
    }

    private function saveProductTaxon($productId, $taxonId) {
        $sql = "INSERT INTO sylius_product_taxon (product_id, taxon_id, position) VALUES (:productId, :taxonId, :position)";
        $stmt = $this->connection->prepare($sql);
        $stmt->execute([
            'productId' => $productId, 
            'taxonId' => $taxonId,
            'position' => 0
        ]);
    }
}
