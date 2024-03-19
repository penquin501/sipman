<?php

namespace App\Command;

use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Customer\Model\CustomerInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class RemoveAllCustomersCommand extends Command
{
    protected static $defaultName = 'app:remove-all-customers';

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        parent::__construct();
        $this->entityManager = $entityManager;
    }

    protected function configure(): void
    {
        $this
            ->setDescription('Removes all customers from the database.')
            ->setHelp('This command allows you to remove all customers from your application...');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $customerRepository = $this->entityManager->getRepository(CustomerInterface::class);
        $customers = $customerRepository->findAll();

        foreach ($customers as $customer) {
            $this->entityManager->remove($customer);
        }

        $this->entityManager->flush();

        $output->writeln('All customers have been removed successfully.');

        return Command::SUCCESS;
    }
}
