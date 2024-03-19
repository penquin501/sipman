<?php

namespace App\Command;

use Sylius\Component\Taxonomy\Model\TaxonInterface;
use Sylius\Component\Taxonomy\Repository\TaxonRepositoryInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;

class ImportTaxonsCommand extends Command
{
    protected static $defaultName = 'app:import-taxons';
    protected static $defaultDescription = 'Imports taxons from a predefined JSON structure.';

    private $taxonRepository;

    public function __construct(TaxonRepositoryInterface $taxonRepository)
    {
        parent::__construct();
        $this->taxonRepository = $taxonRepository;
    }

    protected function configure(): void
    {
        $this->setHelp('This command allows you to import taxons into your database from a JSON structure.');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);

        // $jsonData = '...'; // Your JSON data here
        

        $data = json_decode($jsonData, true)['Sipman'];

        foreach ($data as $category => $countries) {
            $parentTaxon = $this->createOrUpdateTaxon($category, null);

            foreach ($countries as $countryName => $types) {
                $countryTaxon = $this->createOrUpdateTaxon($countryName, $parentTaxon);

                foreach ($types as $typeName => $regions) {
                    $typeTaxon = $this->createOrUpdateTaxon($typeName, $countryTaxon);

                    foreach ($regions as $regionDetails) {
                        foreach ($regionDetails as $detail) {
                            $this->createOrUpdateTaxon($detail['tax_name'], $typeTaxon);
                        }
                    }
                }
            }
        }

        $io->success('Taxons have been successfully imported.');

        return Command::SUCCESS;
    }

    private function createOrUpdateTaxon($name, ?TaxonInterface $parent = null): TaxonInterface
    {
        $taxon = $this->taxonRepository->findOneBy(['name' => $name]) ?: new Taxon();
        $taxon->setName($name);
        $taxon->setParent($parent);
        $this->taxonRepository->add($taxon);

        return $taxon;
    }
}
