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
<html lang="<?= Yii::$app->composition->getLangShortCode(); ?>" data-bs-theme="light">

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
    <?php $this->beginBody() ?>
    <div class="lux-body-bg bg-primary" style="/*background: linear-gradient(rgba(255,90,0,0.2), rgb(255,174,0,0.2)), url('');*/"></div>
    
   <!-- <div class="lux" data-direction="left">
        <div class="lux-bg" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.4)), url('https://source.unsplash.com/random/1280x800/?bakery-items');"></div>
        <div class="lux-fade d-flex flex-row text-light h-100">
            <div class="col-md-6 p-4 bd-highlight align-self-center">
                <h1 class="display-1 fw-bold">LUX.JS DEMO</h2>
                    <h3>left direction</h3>
                    <p style="font-size: 0.8rem;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
    <div class="lux" data-direction="top">
        <div class="lux-bg" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.4)), url('https://source.unsplash.com/random/1280x800/?confectioner');"></div>
        <div class="lux-fade d-flex flex-row text-light h-100">
            <div class="col-md-6 p-4 bd-highlight align-self-center" data-direction="left">
                <h1 class="display-1 fw-bold">LUX.JS DEMO</h2>
                    <h3>top direction</h3>
                    <p style="font-size: 0.8rem;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>
    <div class="lux" data-direction="bottom">
        <div class="lux-bg" style="background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.4)), url('https://source.unsplash.com/random/1280x800/?beautyful+forest');"></div>
        <div class="lux-fade d-flex flex-row text-light h-100">
            <div class="col-md-6 p-4 bd-highlight align-self-center" data-direction="left">
                <h1 class="display-1 fw-bold">LUX.JS DEMO</h2>
                    <h3>top direction</h3>
                    <p style="font-size: 0.8rem;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
        </div>
    </div>  -->   
   <?= $content; ?>
               
    <!-- Spinner Start -->
    <!--<div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div> -->
    <!-- Spinner End -->
    <!--tobbar  -->
    <div class="container-fluid  fixed-top">
        <div class="topbar bg-primary d-none d-lg-block">
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
    <!--= $this->render('_searchForm'); ?-->

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

    <!--<ol>
                <li><a href="<= Yii::$app->menu->home->link; ?>">Home</a></li>
                <php foreach (Yii::$app->menu->current->teardown as $item) : ?>
                    <li><a href="<= $item->link; ?>"><= $item->title; ?></a></li>
                <php endforeach; ?>
            </ol>-->

    <!--= OrderScheme::widget() ?-->
    <!-- Footer -->
    <!-- Back-to-Top  -->
    <!--?= Modal::widget([]); ?-->
    <!--php echo $this->render('_footer'); ?-->
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
  <!--  <button id="hamburger" class="hamburger hamburger--criss-cross position-fixed top-0 end-0" style="z-index: 1100;" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions">
        <div class="inner">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
    </button>

    <div class="offcanvas offcanvas-start" style="background: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.4)), url('https://source.unsplash.com/random/1280x800/?beautyful+nature'); background-size: cover; background-repeat: no-repeat; background-position: right;" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel" aria-modal="true" role="dialog">
        <div class="row g-0 h-100 text-light">
            <div class="col-8 col-md-5 mx-auto py-4 position-relative" style="height: 100vh;">
                <div class="text-center pb-4">
                    <h3>DUMMY LOGO</h3>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item bg-transparent text-center small"><a href="#" class="text-light text-decoration-none">HOME</a></li>
                    <li class="list-group-item bg-transparent text-center small"><a href="#" class="text-light text-decoration-none">CONCEPT</a></li>
                    <li class="list-group-item bg-transparent text-center small"><a href="#" class="text-light text-decoration-none">OVERVIEW</a></li>
                    <li class="list-group-item bg-transparent text-center small"><a href="#" class="text-light text-decoration-none">ACCESS</a></li>
                    <li class="list-group-item bg-transparent text-center small"><a href="#" class="text-light text-decoration-none">CONTACT</a></li>
                </ul>
                <div class="p-3 mb-3 position-absolute bottom-0 w-100 text-center">
                    <p>DUMMY INC.</p>
                    <p>1-1-1 Setagaya Tokyo<br>TEL: 00-000-000<br>FAX: 00-000-000</p>
                    <p>
                        <a rel="noreferrer noopener" href="https://www.instagram.com/" target="_blank">Instagram</a> /
                        <a rel="noreferrer noopener" href="https://www.facebook.com/" target="_blank">facebook</a>
                    </p>
                    <p>© 2023 DUMMY INC</p>
                </div>
            </div>
        </div>
    </div>  -->
    <?php echo $this->render('_footer') ?>
    <?php $this->endBody() ?>
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