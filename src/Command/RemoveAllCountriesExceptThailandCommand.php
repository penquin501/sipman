<?php

namespace App\Command;

use Doctrine\ORM\EntityManagerInterface;
use Sylius\Component\Addressing\Model\CountryInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class RemoveAllCountriesExceptThailandCommand extends Command
{
    protected static $defaultName = 'app:remove-all-countries-except-thailand';

    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        parent::__construct();
        $this->entityManager = $entityManager;
    }

    protected function configure()
    {
        $this
            ->setDescription('Removes all countries from the database except Thailand and US.')
            ->setHelp('This command allows you to remove all countries except Thailand and US from your Sylius application...');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $countryRepository = $this->entityManager->getRepository(CountryInterface::class);
        $countries = $countryRepository->findAll();

        foreach ($countries as $country) {
            if ($country->getCode() !== 'TH' && $country->getCode() !== 'US') {
                $this->entityManager->remove($country);
            }
        }

        $this->entityManager->flush();

        $output->writeln('All countries except Thailand and US have been removed successfully.');

        return Command::SUCCESS;
    }
}
