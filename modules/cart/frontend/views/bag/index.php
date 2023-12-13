<?php
/* @var $this yii\web\View */
/* @var $page common\modules\page\models\Page */
/* @var $items app\models\Variant[] */
/* @var $cart array */
/* @var $model common\modules\cart\models\OrderForm */
/* @var $notAvailable boolean */

use app\modules\cart\models\Delivery;
use app\modules\cart\models\Payment;

use yii\bootstrap5\ActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\MaskedInput;
use app\modules\cart\widgets\CartWidget;
use app\modules\cart\widgets\CheckoutProgress;
//$this->params['breadcrumbs'][] = $page->name;

$delivery_url = Url::to(['cart/delivery']);
$payment_url = Url::to(['cart/payment']);

$js = <<<JS
$('#delivery_id').change(function(){
    var iD = $(this).find(':checked').val();
    $('#delivery-info').load('{$delivery_url}', { id: iD });
});
$('#payment_id').change(function(){
    var iD = $(this).find(':checked').val();
    $('#payment-info').load('{$payment_url}', { id: iD });
});
JS;

$this->registerJs($js);

$css = <<<CSS
.control-label {
    font-weight: bold;
}
.help-block {
    font-size: 13px;
    margin-top: 5px;
}
.help-block-error {
    color: red;
}
CSS;

$this->registerCss($css);
?>

<h1 class="mb-3"><!--= $page->title; ?--></h1>
<div class="row g-5">
  <div class="col-md-5 col-lg-4 order-md-last">
    <!--= $this->render('_table2', [
      'articles' => $items,
      'cart' => $cart,
    ]) ?-->
    <?php  echo CartWidget::widget(); ?>
  </div>
  <div class="col-md-7 col-lg-8">
    <h4 class="mb-3">Billing address</h4>
    <form class="needs-validation was-validated" novalidate="">
      <div class="row g-3">
        <div class="col-sm-6">
          <label for="firstName" class="form-label">First name</label>
          <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
          <div class="invalid-feedback">
            Valid first name is required.
          </div>
        </div>

        <div class="col-sm-6">
          <label for="lastName" class="form-label">Last name</label>
          <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
          <div class="invalid-feedback">
            Valid last name is required.
          </div>
        </div>

        <div class="col-12">
          <label for="username" class="form-label">Username</label>
          <div class="input-group has-validation">
            <span class="input-group-text">@</span>
            <input type="text" class="form-control" id="username" placeholder="Username" required="">
            <div class="invalid-feedback">
              Your username is required.
            </div>
          </div>
        </div>

        <div class="col-12">
          <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
          <input type="email" class="form-control" id="email" placeholder="you@example.com">
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        <div class="col-12">
          <label for="address" class="form-label">Address</label>
          <input type="text" class="form-control" id="address" placeholder="1234 Main St" required="">
          <div class="invalid-feedback">
            Please enter your shipping address.
          </div>
        </div>

        <div class="col-12">
          <label for="address2" class="form-label">Address 2 <span class="text-muted">(Optional)</span></label>
          <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
        </div>

        <div class="col-md-5">
          <label for="country" class="form-label">Country</label>
          <select class="form-select" id="country" required="">
            <option value="">Choose...</option>
            <option>United States</option>
          </select>
          <div class="invalid-feedback">
            Please select a valid country.
          </div>
        </div>

        <div class="col-md-4">
          <label for="state" class="form-label">State</label>
          <select class="form-select" id="state" required="">
            <option value="">Choose...</option>
            <option>California</option>
          </select>
          <div class="invalid-feedback">
            Please provide a valid state.
          </div>
        </div>

        <div class="col-md-3">
          <label for="zip" class="form-label">Zip</label>
          <input type="text" class="form-control" id="zip" placeholder="" required="">
          <div class="invalid-feedback">
            Zip code required.
          </div>
        </div>
      </div>

      <hr class="my-4">

      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="same-address">
        <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
      </div>

      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="save-info">
        <label class="form-check-label" for="save-info">Save this information for next time</label>
      </div>

      <hr class="my-4">

      <h4 class="mb-3">Payment</h4>

      <div class="my-3">
        <div class="form-check">
          <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked="" required="">
          <label class="form-check-label" for="credit">Credit card</label>
        </div>
        <div class="form-check">
          <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required="">
          <label class="form-check-label" for="debit">Debit card</label>
        </div>
        <div class="form-check">
          <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required="">
          <label class="form-check-label" for="paypal">PayPal</label>
        </div>
      </div>

      <div class="row gy-3">
        <div class="col-md-6">
          <label for="cc-name" class="form-label">Name on card</label>
          <input type="text" class="form-control" id="cc-name" placeholder="" required="">
          <small class="text-muted">Full name as displayed on card</small>
          <div class="invalid-feedback">
            Name on card is required
          </div>
        </div>

        <div class="col-md-6">
          <label for="cc-number" class="form-label">Credit card number</label>
          <input type="text" class="form-control" id="cc-number" placeholder="" required="">
          <div class="invalid-feedback">
            Credit card number is required
          </div>
        </div>

        <div class="col-md-3">
          <label for="cc-expiration" class="form-label">Expiration</label>
          <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
          <div class="invalid-feedback">
            Expiration date required
          </div>
        </div>

        <div class="col-md-3">
          <label for="cc-cvv" class="form-label">CVV</label>
          <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
          <div class="invalid-feedback">
            Security code required
          </div>
        </div>
      </div>

      <hr class="my-4">

      <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to checkout</button>
    </form>
  </div>
</div>
<!--= $page->short ?-->

<?php if ($items) : ?>
  <?php $form = ActiveForm::begin(['options' => ['class' => 'mt-3']]) ?>
  <div class="row">
    <div class="col-lg-6">
      <div class="card mb-4">
        <div class="card-header bg-secondary text-white"><?= Yii::t('app', 'Required information for ordering') ?></div>
        <div class="card-body">
          <?= $form->field($model, 'name')->textInput(['placeholder' => Yii::t('app', 'Full name')]) ?>

          <?= $form->field($model, 'phone')->widget(MaskedInput::class, [
            'mask' => '+38 (999) 999-99-99',
          ]) ?>

          <?= $form->field($model, 'email')->textInput() ?>

          <?= $form->field($model, 'entity')->radioList([
            0 => Yii::t('app', 'Private person'),
            1 => Yii::t('app', 'Organization'),
          ], ['class' => 'pt-2']) ?>

          <?= $form->field($model, 'comment')->textarea() ?>

          <?php if (!YII_DEBUG) : ?>
            <!--?= $form->field($model, 'reCaptcha')->widget(ReCaptcha2::class)->label(false) ?-->
          <?php endif; ?>
        </div>
      </div>
    </div>
    <div class="col-lg-6">
      <div class="card mb-4">
        <div class="card-header bg-secondary text-white"><?= Yii::t('app', 'Delivery method') ?></div>
        <div class="card-body">
          <?= $form->field($model, 'delivery_id')->radioList(Delivery::getList(), [
            'class' => 'pt-2',
            'id' => 'delivery_id',
            'item' => function ($index, $label, $name, $checked, $value) {
              return '<div class="radio"><label>' . Html::radio($name, $checked, ['value' => $value]) . ' ' . $label . '</label></div>';
            },
          ]) ?>
          <div id="delivery-info"></div>
        </div>
      </div>
      <div class="card">
        <div class="card-header bg-secondary text-white"><?= Yii::t('app', 'Payment method') ?></div>
        <div class="card-body">
          <?= $form->field($model, 'payment_id')->radioList(Payment::getList(), [
            'class' => 'pt-2',
            'id' => 'payment_id',
            'item' =>  function ($index, $label, $name, $checked, $value) {
              $disabled = $value === 2 && false;
              $options = array_merge([
                'label' => Html::encode($label),
                'value' => $value,
                'disabled' => $disabled,
              ]);
              return '<div class="radio' . ($disabled ? ' text-muted' : null) . '">' . Html::radio($name, $checked, $options) . '</div>';
            },
          ]) ?>
          <div id="payment-info"></div>
        </div>
      </div>
    </div>
  </div>

  <div class="text-muted">
    <b style="color: red;">*</b> <?= Yii::t('app', ' - fields are required') ?>
  </div>

  <div class="text-center mt-4">
    <?= Html::submitButton(Yii::t('app', 'Continue to Checkout'), ['id' => 'submitButton', 'class' => 'w-100 btn btn-primary btn-lg']) ?>
  </div>

  <?php ActiveForm::end() ?>

<?php endif; ?>