<?php

// src/Command/RemoveAllProductsCommand.php

namespace App\Command;

use Doctrine\DBAL\Connection;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class RemoveAllProductsCommand extends Command
{
    protected static $defaultName = 'app:remove-all-products';
    private $connection;

    public function __construct(Connection $connection)
    {
        parent::__construct();
        $this->connection = $connection;
    }

    protected function configure()
    {
        $this
            ->setDescription('Removes all products and their related data.')
            ->setHelp('This command allows you to remove all products and their related data from your Sylius application...');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        try {
            // Suppression des éléments de commande liés aux variants de produit
            $this->connection->executeStatement('DELETE FROM sylius_order_item WHERE variant_id IN (SELECT id FROM sylius_product_variant);');
            
            // Suppression des variants de produit
            $this->connection->executeStatement('DELETE FROM sylius_product_variant;');
            
            // Suppression des produits
            $this->connection->executeStatement('DELETE FROM sylius_product;');

            $output->writeln('All products and related items have been removed successfully.');
        } catch (\Exception $e) {
            $output->writeln('An error occurred while trying to remove all products: ' . $e->getMessage());
            return Command::FAILURE;
        }

        return Command::SUCCESS;
    }
}
