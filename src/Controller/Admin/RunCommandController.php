<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;
use Symfony\Component\HttpKernel\KernelInterface;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;


class RunCommandController extends AbstractController
{
    private $kernel;
    private $client;
    private $requestStack;
    private $urlGenerator;

    public function __construct(
        KernelInterface $kernel, 
        HttpClientInterface $client,
        RequestStack $requestStack, 
        UrlGeneratorInterface $urlGenerator
    ) {
        $this->kernel = $kernel;
        $this->client = $client;
        $this->requestStack = $requestStack;
        $this->urlGenerator = $urlGenerator;
    }

    /**
     * @Route("/admin/runcommand", name="admin_run_command", methods={"GET"})
     */
    public function index(): Response
    {
        return $this->render('bundles/SyliusAdminBundle/Sipman/runcmd.html.twig');
    }

    /**
     * Execute a specific command.
     *
     * @Route("/admin/executecommand/{commandName}", name="admin_execute_command", methods={"GET"})
     */
    public function executeCommand(string $commandName): Response
    {
        if ($commandName !== "create-taxons") {
            $allowedCommands = [
                'remove-all-countries-except-thailand' => 'app:remove-all-countries-except-thailand',
                'remove-all-customers' => 'app:remove-all-customers',
                'remove-all-products' => 'app:remove-all-products',
                'remove-all-taxons' => 'app:remove-all-taxons',
                'remove-currencies' => 'app:remove-currencies',
                'sync-product' => 'app:sync-product',
                'update-taxon-product' => 'app:update-taxon-product'
            ];

            if (!array_key_exists($commandName, $allowedCommands)) {
                $this->addFlash('error', 'The command does not exist.');
            }

            $consolePath = $this->kernel->getProjectDir() . '/bin/console';
            $process = new Process(['php', $consolePath, $allowedCommands[$commandName]]);

            try {
                $process->mustRun(); // This will throw an exception if the command fails.

                $this->addFlash('success', 'Command successfully executed.');
            } catch (ProcessFailedException $exception) {
                $this->addFlash('error', "Command execution failed: " . $exception->getMessage());
            }

        }
        
        return $this->render('bundles/SyliusAdminBundle/Sipman/runcmd.html.twig');
    }
}
