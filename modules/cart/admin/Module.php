<?php

namespace app\modules\cart\admin;

/**
 * Cart Admin Module.
 *
 * File has been created with `module/create` command. 
 * 
 * @author
 * @since 1.0.0
 */
class Module extends \luya\admin\base\Module
{

    public $apis = [
        'api-cart-buyer'            => 'app\modules\cart\admin\apis\BuyerController',
        'api-cart-order'            => 'app\modules\cart\admin\apis\OrderController',
        'api-cart-orderproduct'    => 'app\modules\cart\admin\apis\OrderProductController',       
        'api-cart-delivery'         => 'app\modules\cart\admin\apis\DeliveryController',
        'api-cart-payment'          => 'app\modules\cart\admin\apis\PaymentController',
       
    ];

    public function getMenu()
    {
        return (new \luya\admin\components\AdminMenuBuilder($this))
            ->node('Shop Cart', 'add_shopping_cart')
            ->group('Settings')     
            ->itemApi('Buyers', 'cartadmin/buyer/index', 'folder', 'api-cart-buyer')
            ->itemApi('Orders', 'cartadmin/order/index', 'library_books', 'api-cart-order')
            ->itemApi('Order Product', 'cartadmin/order-product/index', 'list', 'api-cart-orderproduct')
            ->itemApi('Delivery Methods', 'cartadmin/delivery/index', 'domain', 'api-cart-delivery')
            ->itemApi('Payment Methods', 'cartadmin/payment/index', 'adjust', 'api-cart-payment');
          
    }
}