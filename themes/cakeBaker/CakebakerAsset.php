<?php
namespace app\themes\cakebaker;

use luya\web\Asset;

class CakebakerAsset extends Asset
{
    public $sourcePath = '@activeTheme/dist';
    public $css = [  
        "//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css",
      //  'flaticon.css',
      //  'bootstrap.min.css',    
      //  'style.css'
      //!  'css/main.css'
       'css/mdb.min.css',
       'plugins/css/all.min.css',

    ];

    public $js = [
       // 'https://cdn.jsdelivr.net/gh/kmusiclife/lux.js@main/lux.min.js',
        'js/mdb.min.js',
        'plugins/js/all.min.js',
     //  'js/ecommerce-gallery.min.js',
      //  'main.js',
    ];
    
    
    public $jsOptions = [
       // 'async' => true,
    ];
    
    public $depends = [
       // 'basepodapps\feathericons\FeatherIconsAsset',
        'yii\web\JqueryAsset',       
       // 'yii\bootstrap5\BootstrapAsset' ,
     //   'exocet\bootstrap5md\MaterialAsset',
        'yii\web\YiiAsset'       
    ];
}