<?php
namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
    public $sourcePath = '@activeTheme/dist';
    public $css = [  
       // 'bootstrap.min.css',    
        'style.css'
    ];

    public $js = [
        'main.js',
    ];
    
    
    public $jsOptions = [
        'async' => true,
    ];
    
    public $depends = [
        'yii\web\JqueryAsset',       
        'yii\bootstrap5\BootstrapAsset' ,
        'yii\web\YiiAsset'       
    ];
}