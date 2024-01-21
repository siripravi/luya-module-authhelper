<?php

use yii\helpers\Html;
use yii\helpers\Url;
use app\modules\shopcart\widgets\CartWidget;
use app\modules\shopcart\widgets\CartIconWidget;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\bootstrap5\Popover;
?>
<?php
$menuItems = []; //<iconify-icon icon="mdi:user-outline" style="color: #123;" width="20" rotate="0deg"></iconify-icon>
?>

<!-- Navbar begins  -->
<?php
NavBar::begin([
    //'brandLabel' => '<span class="gaozhan-logo">'.Html::img("/image/site/nyxta.png",["style"=>"max-height: 80%; padding: 0;position:relative;"]).'</span>',
    'brandLabel'  => '<h1 class="text-primary display-6">Cake Zone</h1>',
    'brandUrl' => Yii::$app->homeUrl,
    'options' => [
        'class' => 'navbar navbar-expand-lg',  // bg-dark',
        'data-bs-theme' => 'dark',
        // 'style' => "background-color: #46141c;border-radius: 230px 100px;"
    ],
]);  ?>

<?php
$menuItems = [
    [
        'label' => Yii::t('app', 'Home'),
        'url' => ['/'],
        'active' => in_array(Yii::$app->controller->id, ['site']) && in_array(Yii::$app->controller->action->id, ['index']),
        'linkOptions' => [
            'class' => in_array(Yii::$app->controller->id, ['site']) && in_array(Yii::$app->controller->action->id, ['index']) ? 'nav-item nav-link text-white ml-3' : 'nav-item nav-link text-white',
        ],
    ],
    [
        'label' => Yii::t('app', 'Browse'),
        //'url' => ['/category/index'],
        'url' => ["#"], //nav-link dropdown-toggle show 
        'options' => ['class' => 'has-megamenu'],
        //class="dropdown-toggle" data-toggle="dropdown"
        'linkOptions' => ['class' => 'dropdown-toggle', 'data-bs-auto-close' => 'outside', 'data-bs-toggle' => 'dropdown'],
        // 'active' => in_array(Yii::$app->controller->id, ['category', 'product']),
        'items' => [
            $this->render("_mega")
        ]
    ],
    ['label' => Yii::t('app', 'Blog'), 'url' => ['/blog']]

];
$userItems = [];
if (Yii::$app->user->isGuest) {
    $userItems[] = [
        'label' =>  Html::tag(
            'span',
            '<i class="" data-feather="user-check"></i>',
            ["class" => "d-inline-block", "tabindex" => "0", "data-bs-toggle" => "popover", "data-bs-trigger" => "hover focus", "data-bs-content" => "click to login!"]
        ),
        'encode' => false,
        'url' => ['/user/login'],
        'linkOptions' => ['alt' => Yii::t('app', 'Login'), 'class' => ''],
    ];
} else {
    $userItems[] = [
        'label' => Yii::t('app', 'Manage users'),
        'url' => ['/user/index'],
        'visible' => \Yii::$app->user->can('manage_users'),
        'items' => []
    ];
    $userItems[] = [
        'label' => Html::img(
            \Yii::$app->user->identity->getAvatarImage(),
            ['alt' => Yii::$app->user->identity->username, 'class' => 'rounded-circle border-2', 'width' => 38]
        ),
        'encode' => false,
        'linkOptions' => ['alt' => Yii::t('app', 'Welcome'), 'data-bs-title' => Yii::t('app', 'Welcome'), 'class' => ''],
        'items' => [
            [
                'label' => Html::tag('span', Yii::$app->user->identity->username),
                'url' => ['/user/settings/profile'],
                'encode' => false,
            ],
            [
                'label' => Html::tag('span', Yii::t('app', 'Account Settings')),
                'encode' => false,
                'url' => ['/user/settings/account'],
                'linkOptions' => ['alt' => Yii::t('app', 'Account Settings'), 'title' => Yii::t('app', 'Account Settings')],
            ],
            [
                'label' => Html::tag('span', Yii::t('app', 'Addresses')),
                'encode' => false,
                'url' => ['/user/settings/addresses'],
                'linkOptions' => ['alt' => Yii::t('app', 'Addresses'), 'title' => Yii::t('app', 'Addresses')],
            ],
            [
                'label' => Html::tag('span', Yii::t('app', 'Logout')),
                'url' => ['/user/logout'],
                'encode' => false,
                'linkOptions' => [
                    'data-method' => 'post',
                    'alt' => Yii::t('app', 'Logout'),
                    'title' => Yii::t('app', 'Logout'),
                ],
            ]
        ]
    ];
}

?>
<!--<div class="col-auto me-auto"> -->
<?= Nav::widget([
    'options' => ['class' => "navbar-nav ms-auto mx-lg-auto py-0"],
    'items' => $menuItems,
]); ?>
<!--</div>  -->
<div class="col-lg-auto text-center text-lg-left header-item-holder d-inline-flex ps-4" id="right-nav">
    <?= CartIconWidget::widget(); ?>
</div>
<div class="d-flex m-3 me-0" id="right-nav-x">
    <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i data-feather="search" class="text-primary"></i></button>
    <!-- <a class="cart-button" href="#">
		<span class="bag-count">3</span>
		<span class="bag-icon">Bag</span>
		<span class="bag-label">View Bag</span>
	</a> -->
    <!--<a href="#" class="position-relative me-4 my-auto">
        <i class="border border-secondary" data-feather="shopping-bag"></i>
        <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
    </a> -->
    <?= Nav::widget([
        'options' => ['class' => "navbar-nav ms-auto mx-lg-auto py-0"],
        'items' => $userItems,
    ]); ?>
</div>

<?php NavBar::end();   ?>