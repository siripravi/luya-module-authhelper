<?php
namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
    public $sourcePath = '@activeTheme/dist';
    public $css = [        
        'css/main.css'  

    ];

    public $js = [     
        'js/main.js',
    ];
    
    
    public $jsOptions = [
       // 'async' => true,
    ];
    
    public $depends = [
       // 'basepodapps\feathericons\FeatherIconsAsset',
        'yii\web\JqueryAsset',       
        'yii\bootstrap5\BootstrapAsset' ,
     //   'exocet\bootstrap5md\MaterialAsset',
        'yii\web\YiiAsset'       
    ];
}