<?php

use arturoliveira\checkoutprogressbar\CheckOutProgressBar;
use yii\helpers\Url;

/**
 * @var string[] $placeholders
 */
?>
<!-- Intro -->
<div class="header-container">
    <div class="container">
        <?= $placeholders['banner'] ?>
    </div>
</div>

<!--= CheckOutProgressBar::widget([
    'current_step' => 2,
    'current_step_done' => TRUE, # Optional if you want this step to be checked
    'steps' => [
        [
            'label' => 1,
            'title' => 'Your Cart',
            'url' => Url::toRoute('/shopping-cart'), # Optional if you want the label and title to be clickable
        ],
        [
            'label' => 2,
            'title' => 'Delivery Details',
            'url' => Url::toRoute('/checkout-delivery'), # Optional if you want the label and title to be clickable
        ],
        [
            'label' => 3,
            'title' => 'Payment Details',
            'url' => Url::toRoute('/checkout-delivery'), # Optional if you want the label and title to be clickable
        ]
    ]
]);

?-->
<!-- Main -->
<section id="main-detail" class="wrapper">
    <div class="container">
        <?= $placeholders['main'] ?>
    </div>
</section>

<?php if ($placeholders['related']) : ?>
    <!-- Highlights -->
    <section id="highlights" class="wrapper style3">
        <div class="container">
            <?= $placeholders['related'] ?>
        </div>
    </section>
<?php endif ?>