<?php
// src/Command/RemoveCurrenciesCommand.php

namespace App\Command;

use Doctrine\DBAL\Connection;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class RemoveCurrenciesCommand extends Command
{
    protected static $defaultName = 'app:remove-currencies';
    private $connection;

    public function __construct(Connection $connection)
    {
        parent::__construct();
        $this->connection = $connection;
    }

    protected function configure()
    {
        $this
            ->setDescription('Removes all currencies except THB.')
            ->setHelp('This command allows you to remove all currencies in your Sylius application except for THB...');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        // Commande SQL pour mettre à jour la devise des canaux à THB
        $updateChannelsSql = "UPDATE sylius_channel SET base_currency_id = (SELECT id FROM sylius_currency WHERE code = 'THB') WHERE base_currency_id NOT IN (SELECT id FROM sylius_currency WHERE code = 'THB');";
        // Commande SQL pour supprimer toutes les devises sauf THB
        $deleteCurrenciesSql = "DELETE FROM sylius_currency WHERE code != 'THB';";

        try {
            // Exécuter la mise à jour des canaux
            $this->connection->executeStatement($updateChannelsSql);
            // Exécuter la suppression des devises
            $this->connection->executeStatement($deleteCurrenciesSql);

            $output->writeln('All channels updated to THB and all currencies except THB have been removed.');
        } catch (\Exception $e) {
            $output->writeln('An error occurred: ' . $e->getMessage());
            return Command::FAILURE;
        }

        return Command::SUCCESS;
    }
}
