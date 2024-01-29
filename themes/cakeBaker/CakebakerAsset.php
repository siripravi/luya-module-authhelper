<?php
namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
    public $sourcePath = '@activeTheme/dist';
    public $css = [ 
       // 'css/mdb.min.css',   
        'css/main.css' ,
     //   'plugins/css/ecommerce-gallery.min.css'

    ];

    public $js = [     
       // 'js/mdb.min.js',
        'js/main.js',
      //  'plugins/js/ecommerce-gallery.min.js'
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