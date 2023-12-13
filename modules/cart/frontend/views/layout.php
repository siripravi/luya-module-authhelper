<?php
use app\modules\cart\widgets\CheckoutProgress;
use yii\helpers\Url;

?>
<div class="row">
    <div class="col-md-10">
    <?= CheckoutProgress::widget([
  'current_step' => 1,
  'current_step_done' => TRUE, # Optional if you want this step to be checked
  'steps' => [
      [
        'label' => 1,
        'title' => 'Step 1',
        'url' => Url::toRoute('/cart/bag/index'), # Optional if you want the label and title to be clickable
      ],
      [
        'label' => 2,
        'title' => 'Step 2',
        'url' => Url::toRoute('/cart/bag/address'), # Optional if you want the label and title to be clickable
      ],
      [
        'label' => 3,
        'title' => 'Step 3',
        'url' => Url::toRoute('/cart/bag/checkout'), # Optional if you want the label and title to be clickable
      ]
    ]
  ]);
  ?>
        <!-- where the content of the basket and confirm layout will be returned -->
        <?= $content; ?>
    </div>
    
    <div class="col-md-2">
        <h1>Basket</h1>
        <p><?= $this->context->getBasketCount(); ?> item(s)</p>
    </div>
</div>