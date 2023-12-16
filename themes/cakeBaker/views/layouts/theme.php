<?php

use app\widgets\OrderScheme;

use yii\helpers\Html;
use yii\bootstrap5\Breadcrumbs;

/**
 * @var $this \luya\web\View
 */

use app\themes\cakebaker\CakebakerAsset;

CakebakerAsset::register($this);

$this->beginPage();
?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->composition->getLangShortCode(); ?>">

<head>
    <title><?= $this->title; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
 
   <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <?php $this->head() ?>
    <style>
        .slick-slide img {
            /*width: 100%;*/
        }
    </style>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->
    <!--tobbar  -->
    <div class="container-fluid  fixed-top">
        <div class="container topbar bg-primary d-none d-lg-block">
            <div class="d-flex justify-content-between">
                <div class="top-info ps-2">
                <small class="me-3"><i data-feather="phone-call" class="icon-feather icon-phone-call me-2 text-secondary"></i><a href="#" class="text-white">(+91)12345 12345</a></small>
                    <small class="me-3"><i data-feather="map-pin" class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                    <small class="me-3"><i data-feather="mail" class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
                </div>
                <div class="top-link pe-2">
                    <a href="#" class="text-white"><small class="text-white mx-2">Privacy Policy</small>/</a>
                    <a href="#" class="text-white"><small class="text-white mx-2">Terms of Use</small>/</a>
                    <a href="#" class="text-white"><small class="text-white ms-2">Sales and Refunds</small></a>
                </div>
            </div>
        </div>
        <div class="container px-0">
            <?php echo $this->render('_headerNav'); ?>
            
        </div>
    </div>
    <?= $this->render('_searchForm'); ?>
   
    
    <div class="row min-vh-100">
        <?php $this->beginBody() ?>
        <div class="col-12">
            <!--php echo $this->render('_topNav'); -->
            <header class="bg-primary py-2">

                <div class="container px-4 px-lg-5 my-5">
                    <h1 class="bg-white">
                    </h1>
                    <p class="lead fw-normal text-white-50 mb-0"></p>
                </div>
            </header>
        </div>
        <div class="container">
            <!--<ol>
                <li><a href="<= Yii::$app->menu->home->link; ?>">Home</a></li>
                <php foreach (Yii::$app->menu->current->teardown as $item) : ?>
                    <li><a href="<= $item->link; ?>"><= $item->title; ?></a></li>
                <php endforeach; ?>
            </ol>-->

            <main>
                <?= $content; ?>
            </main>
        </div>
        <div class="col-12 align-self-end">
            <?= OrderScheme::widget() ?>
            <!-- Footer -->
            <!-- Back-to-Top  -->
            <!--?= Modal::widget([]); ?-->
            <?php echo $this->render('_footer'); ?>
        </div>


        <!-- Messages -->
        <div class="toast-container position-fixed bottom-0 start-0 p-3">
            <div class="toast align-items-center text-white bg-success border-0">
                <div class="d-flex">
                    <div class="toast-body">
                        <i class="fas fa-check-circle me-2"></i>
                        This is a success alert message.
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
            <div class="toast align-items-center text-white bg-danger border-0">
                <div class="d-flex">
                    <div class="toast-body">
                        <i class="fas fa-times-circle me-2"></i>
                        This is an error alert message.
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
            <div class="toast align-items-center text-white bg-warning border-0">
                <div class="d-flex">
                    <div class="toast-body">
                        <i class="fas fa-exclamation-circle me-2"></i>
                        This is a warning alert message.
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
            <div class="toast align-items-center text-white bg-info border-0">
                <div class="d-flex">
                    <div class="toast-body">
                        <i class="fas fa-info-circle me-2"></i>
                        This is a error alert message.
                    </div>
                    <button type="button" onclick="topFunction()" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        </div>
        <!-- Messages -->
        <?php $this->endBody() ?>
    </div>
</body>

<!--<body class="home">
    <php $this->beginBody() ?>    
        <header id="header" class="header-scroll top-header headrom">
            <php echo $this->render('_header') ?>
        </header>
        
        <php echo $content ?>
       
        <php echo $this->render('_footer') ?>
       <php $this->endBody() ?>
</body>  -->

</html>
<?php $this->endPage() ?>