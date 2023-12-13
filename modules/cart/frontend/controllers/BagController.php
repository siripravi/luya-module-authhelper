<?php

namespace app\modules\cart\frontend\controllers;

use app\modules\cart\actions\DeliveryAction;
use app\modules\cart\actions\PaymentAction;
use app\modules\cart\models\Cart;
use app\modules\cart\models\Order;
use app\modules\cart\models\OrderForm;
use app\modules\cart\widgets\CartWidget;
use luya\admin\filters\MediumCrop;
use siripravi\catalog\models\Article;
use Yii;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\Controller;

/**
 * Class CartController
 * @package app\controllers
 */
class BagController extends \luya\web\Controller
{

    /**
     * @return array
     */
    public function behaviors()
    {
        return [
            [
                'class' => 'yii\filters\AjaxFilter',
                'only' => ['modal', 'add', 'del'],
            ],
        ];
    }

    public function actions()
    {
        return [
            'delivery' => DeliveryAction::class,
            'payment' => PaymentAction::class,
        ];
    }

    /**
     * @return string|\yii\web\Response
     */
    public function actionIndex()
    {
        $cart = Cart::getCart(); $sum = 0;
        foreach ($cart as $i => $item) { 
            $sum += $item["qty"] * $item["price"];
        }    
        $car = ArrayHelper::index($cart,'pid');      
        $variant_ids = array_keys($car);
        $items = ArrayHelper::map(Article::find()->where(['id' => $variant_ids])->andWhere(['enabled' => true])->all(),
                      'id',
                     function($element){
                      return [$element->name,
                      Yii::$app->storage->getImage($element->image_id)->applyFilter(\app\filters\ThumbFilter::identifier())->source
                                          
                     ];
                     }
                );     
       
        $model = new OrderForm();

        $model->scenario = 'user';

        if ($model->load(Yii::$app->request->post()) && $order_id = $model->send()) {
            Yii::$app->response->cookies->add(new \yii\web\Cookie([
                'name' => 'order',
                'value' => $order_id,
                'expire' => time() + 3600 * 24 * 7,
            ]));
            Yii::$app->session->setFlash('orderSubmitted');
            //if Yii::$app->params['sendSputnikOrder'] &&
            if ( $model->email && $order = Order::findOne($order_id)) {
               /* $products = [];
                foreach ($order->products as $product) {
                    $image = null;
                    if ($product->image) {
                        $image = "";// Url::to(ImageHelper::thumb($product->image->id, 'micro'), 'https');
                    } elseif ($product->product->image) {
                        $image = "";//Url::to(ImageHelper::thumb($product->product->image->id, 'micro'), 'https');
                    }
                    $products[] = [
                        'imageUrl' => $image,
                        'url' => Url::to(['/catalog/product/index', 'slug' => $product->product->slug], 'https'),
                        'name' => (string)$order->cartItemName[$product->id],
                        'cost' => (string)$order->cartItemPrice[$product->id],
                        'quantity' => (string)$order->cartItemCount[$product->id],
                        'cartItemFeatures' => (string)$order->cartItemFeatures[$product->id]
                    ];
                }*/
                /*Yii::$app->esputnik->event('zakaz', $order->email, [
                    'externalOrderId' => (string)$order->id,
                    'firstName' => (string)$order->buyer->name,
                    'email' => (string)$order->email,
                    'phone' => (string)$order->phone,
                    'totalCost' => (string)$order->amount,
                    'paymentMethod' => $order->payment_id ? (string)$order->paymentMethod->name : null,
                    'deliveryMethod' => $order->delivery_id ? $order->deliveryMethod->name . ($order->delivery ? ', ' . Html::encode($order->delivery) : null) : null,
                    'products' => $products,
                ]);*/
            }

            return $this->redirect(['/cart/order', 'id' => $order_id, 'hash' => md5($order_id . Yii::$app->params['order_secret'])]);
        }

        return $this->renderLayout('index', [
           // 'page' => $page,
            'items' => $items,
            'cart' => $cart,
            'model' => $model,
            'sum' => $sum
           
        ]);
    }

    /**
     * @return string
     */
    public function actionModal()
    {
        $footer = Html::button(Yii::t('app', 'Continue shopping'), ['class' => 'btn btn-primary mr-auto', 'data-dismiss' => 'modal']);
        $footer .= Html::a(Yii::t('app', 'Place an order'), ['/cart/bag/index'], ['class' => 'btn btn-warning']);

        $cart = Cart::getCart();

        $article_ids = array_keys($cart);

        $items = Article::find()->where(['id' => $article_ids])->andWhere(['enabled' => true])->all();

        $data = [
            'title' => Yii::t('app', 'Buy'),
            'body' => $this->renderAjax('modal', [
                'items' => $items,
                'cart' => $cart,
            ]),
            'footer' => $footer,
            'dialog' => 'modal-lg',
        ];

        return Json::encode($data);
    }


    /**
     * @return string
     */
    public function actionOffcanvas()
    {
        $footer = Html::button(Yii::t('app', 'Continue shopping'), ['class' => 'btn btn-primary mr-auto', 'data-dismiss' => 'modal']);
        $footer .= Html::a(Yii::t('app', 'Place an order'), ['/cart/bag/index'], ['class' => 'btn btn-warning']);
        $cart = Cart::getCart();
        $article_ids = array_keys($cart);

        $items = Article::find()->where(['id' => $article_ids])->andWhere(['enabled' => true])->all();

        $data = [
            'title' => Yii::t('app', 'Your Cart Items'),
            'body' => $this->renderAjax('offcanvas', [
                'items' => $items,
                'cart' => $cart,
            ]),
            'footer' => $footer,
            'dialog' => 'modal-lg',
        ];
       
        return Json::encode($data);
    }


    /**
     * @return string
     * @throws \Exception
     */
    public function actionBlock()
    {
        return CartWidget::widget();
    }

    /**
     * @param $id
     * @return bool
     */
    public function actionDel($id)
    {
        $cart = Cart::getCart();
        ArrayHelper::remove($cart, $id);
        return Cart::setCart($cart);
    }

    /**
     * @param $id
     * @return bool
     */
    public function actionAdd($id, $pid, $ftext,$price)
    {
        $cart = Cart::getCart();
        if(isset($cart[$id])){
            return false;
        }
        $qty = isset($cart[$id])? $cart[$id]["qty"] + 1: 1;
        ArrayHelper::setValue($cart, $id, ["qty"=>  $qty, "pid"=> $pid,"ftext"=>$ftext,"price" => $price]);  //ArrayHelper::getValue($cart, $id) + 1
        return Cart::setCart($cart);
    }

    /**
     * @param $id
     * @param $count
     * @return bool
     */
    public function actionSet($id, $count)
    {
        $cart = Cart::getCart();
        $cart[$id]['qty'] = $count;
        return Cart::setCart($cart);
    }

    public function actionAddress(){
        return $this->renderLayout('customer_address');
    }
    public function actionCheckout(){
        return $this->renderLayout('checkout');

    }
     /**
     * @return int Calculate the number of basket items
     */
    public function getBasketCount()
    {
        return 10;
    }
}
