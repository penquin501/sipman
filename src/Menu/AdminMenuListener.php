<?php

namespace App\Menu;

use Sylius\Bundle\UiBundle\Menu\Event\MenuBuilderEvent;

final class AdminMenuListener
{
    public function addAdminMenuItems(MenuBuilderEvent $event): void
    {
        $menu = $event->getMenu();

        $newSubmenu = $menu
            ->addChild('new')
            ->setLabel('Sipman Configuration')
        ;

        $newSubmenu    
            ->addChild('new-subitem', ['route' => 'app_admin_custom_page'])
            ->setLabel('Sync Product')
            ->setLabelAttribute('icon', 'glass martini');
        ;
    }
}