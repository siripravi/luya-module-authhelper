<?php

namespace app\modules\cart\admin\controllers;

/**
 * Order Controller.
 * 
 * File has been created with `crud/create` command. 
 */
class OrderController extends \luya\admin\ngrest\base\Controller
{
    /**
     * @var string The path to the model which is the provider for the rules and fields.
     */
    public $modelClass = 'app\modules\cart\models\Order';
}