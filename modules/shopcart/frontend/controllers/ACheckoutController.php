<?php

namespace app\modules\shopcart\frontend\controllers;

use Yii;
use yii\data\ArrayDataProvider;

use yii\helpers\ArrayHelper;
use kartik\grid\EditableColumnAction;
use yii\web\NotFoundHttpException;
use app\models\UserAddress;

class CheckoutController extends \yii\web\Controller
{

    public function actionIndex()
    {

		return $this->render('index',['defaultAddress'=>$this->callDefaultAddress()]);
    }

    public function actionEditqty(){
    	
    }


    public function actionPaymentMethod(){

      	
    }

    protected function callDefaultAddress(){
    	$session = Yii::$app->session;
    	$getIdAddress = $session->get('useAddressCheckOut');

    	if($getIdAddress === false){
    		$defaultSession = null;
    	} else {
    		$defaultSession = $getIdAddress;
    	} 

    	if($defaultSession == null){
	    	if (($model = UserAddress::findOne(['is_default'=>1])) !== null) {
	            return $model;
	        }
	    } else {
	    	if (($model = UserAddress::findOne($defaultSession)) !== null) {
	            return $model;
	        }
	    }

        return null;
    }


    public function actionMethodPayment(){
    	return $this->render('payment_method',['defaultAddress'=> new UserAddress()]);
    }


    public function actionUpdateCart(){
    	
    }


}
