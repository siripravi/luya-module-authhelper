<?php

namespace app\modules\cart\frontend\blocks;

use luya\cms\base\PhpBlock;
use app\modules\cart\models\Cart;
use siripravi\catalog\models\Article;
use luya\helpers\ArrayHelper;
use luya\admin\filters\MediumCrop;
use siripravi\catalog\frontend\blockgroups\BlockCollectionGroup;
use yii\data\ActiveDataProvider;

/**
 * Head Teaser Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0-RC3.
 */
class CartBlock extends PhpBlock
{
    public $module = 'cart';

    /**
     * @var boolean Choose whether block is a layout/container/segmnet/section block or not, Container elements will be optically displayed
     * in a different way for a better user experience. Container block will not display isDirty colorizing.
     */
    //  public $isContainer = true;

    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;

    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;

    public $product_ids = [28, 4];
    public $link;
    /**
     * @inheritDoc
     */
    public function blockGroup()
    {
        return BlockCollectionGroup::class;
    }

    /**
     * @inheritDoc
     */
    public function name()
    {
        return 'Shop Cart';
    }

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'local_mall'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [
            'placeholders' => [
                ['var' => 'elements', 'label' => 'Elemente', 'type' => self::TYPE_LIST_ARRAY],
            ],
        ];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [
            //  'menu' => Group::getMenu(),
            'elements' => $this->getCartProducts()
        ];
    }

    public function getCartProducts()
    {
        $cart = Cart::getCart();
        $sum = 0; $items = []; $count = 0;
        foreach ($cart as $i => $item) { 
            $sum += $item["qty"] * $item["price"]; 
            $count += $item['qty'];
        }      
        $car = ArrayHelper::index($cart,'pid');      
        $variant_ids = array_keys($car);
        $items = ArrayHelper::map(Article::find()->where(['id' => $variant_ids])->andWhere(['enabled' => true])->all(),
                     'id',
                    function($element){
                     return [$element->name,
                        $element->getImage()->applyFilter(MediumCrop::identifier())->source
                       // Yii::$app->storage->getImage($element->image_id)->applyFilter(\app\filters\MediumFilter::identifier())->source
                    ];
                    }
                );     
        
        return [
            'cart' => $cart,
            'articles' => $items,
            'sum'  => $sum,
            'count' => $count
        ];
    }

    /**
     * {@inheritDoc}
     *
     */
    public function admin()
    {
        return '<p>Shop Cart</p>';
    }
}
