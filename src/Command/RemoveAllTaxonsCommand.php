<?php
// src/Command/RemoveAllTaxonsCommand.php

namespace App\Command;

use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
// use App\Entity\Product;
use Sylius\Component\Product\Repository\ProductRepositoryInterface;
use Sylius\Component\Core\Model\ProductInterface;

class RemoveAllTaxonsCommand extends Command
{
    protected static $defaultName = 'app:remove-all-taxons';

    private $entityManager;
    private $taxonRepository;
    private ProductRepositoryInterface $productRepository;

    public function __construct(
        EntityManagerInterface $entityManager, 
        ProductRepositoryInterface $productRepository, 
        TaxonRepositoryInterface $taxonRepository
    ) {
        parent::__construct();
        $this->entityManager = $entityManager;
        $this->taxonRepository = $taxonRepository;
        $this->productRepository = $productRepository;
    }

    protected function configure(): void
    {
        $this
            ->setDescription('Removes all taxons from the database.')
            ->setHelp('This command allows you to remove all taxons from your Sylius application...');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        ini_set('memory_limit', '-1'); // Increase memory limit for this action
        set_time_limit(60);
        
        $output->writeln('Starting to remove all taxons...');

        $products = $this->productRepository->findAll();
        foreach ($products as $product) {
            $product->setMainTaxon(null);
        }

        $this->entityManager->flush();

        // Récupère tous les taxons
        $taxons = $this->taxonRepository->findAll();

        if (!$taxons) {
            $output->writeln('No taxons found to remove.');
            return Command::SUCCESS;
        }

        foreach ($taxons as $taxon) {
            $this->entityManager->remove($taxon);
        }

        $this->entityManager->flush();
        $this->entityManager->clear();

        $output->writeln('All taxons have been removed successfully.');

        return Command::SUCCESS;
    }
}
