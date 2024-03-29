<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController; //debug
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Sylius\Component\Core\Repository\ProductRepositoryInterface;
use App\Service\WineService;
use Sylius\Component\Channel\Context\ChannelContextInterface;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
// use Sylius\Bundle\CoreBundle\Controller\ProductController as BaseProductController;

class ProductDetailController extends AbstractController
{
    private $wineService;
    private $productRepository;
    private $channelContext;
    private $parameterBag;

    public function __construct(
        WineService $wineService, 
        ProductRepositoryInterface $productRepository,
        ChannelContextInterface $channelContext,
        ParameterBagInterface $parameterBag,
    ) {
        $this->wineService = $wineService;
        $this->productRepository = $productRepository;
        $this->channelContext = $channelContext;
        $this->parameterBag = $parameterBag;
    }

    #[Route('/product/{slug}', name: 'sylius_shop_product_show')]
    public function showAction(Request $request, string $slug): Response
    {
        $product = $this->productRepository->findOneByCode($slug);
        if (!$product) {
            throw $this->createNotFoundException('The product does not exist');
        }

        $wineData = $this->wineService->findWineByProductId($product->getCode());

        $configuration = [
            'showReviews' => true,
            'request' => [
                'currentRoute' => $request->attributes->get('_route'),
                'requestPath' => $request->getPathInfo(),
                'locale' => $locale = $request->getLocale(),
                'defaultLocale' => $this->parameterBag->get('kernel.default_locale'),
            ],
        ];

        return $this->render('bundles/SyliusShopBundle/Product/show.html.twig', [
            'product' => $product,
            'wineData' => $wineData,
            'configuration' => $configuration
        ]);
    }
}
