<?php
namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
    public $sourcePath = '@activeTheme/dist';
    public $css = [  
        'flaticon.css',
        'bootstrap.min.css',    
        'style.css'
    ];

    public $js = [
        'main.js',
    ];
    
    
    public $jsOptions = [
        'async' => true,
    ];
    
    public $depends = [
        'basepodapps\feathericons\FeatherIconsAsset',
        'yii\web\JqueryAsset',       
        'yii\bootstrap5\BootstrapAsset' ,
        'yii\web\YiiAsset'       
    ];
}