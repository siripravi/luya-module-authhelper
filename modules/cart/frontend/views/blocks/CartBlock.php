<?php
$articles = $this->extraValue('elements')['articles'];
$cart = $this->extraValue('elements')['cart'];
$sum = $this->extraValue('elements')['sum'];
$cart = $this->extraValue('elements')['cart'];
$count = $this->extraValue('elements')['count'];
?>

<section class="my-5">
    <div class="container">
        <?php if (!empty($cart)) :
            $sum = 0; $discount = 50; $tax = 12;
        ?>
         <h4 class="card-title mb-4">Your shopping cart</h4>
            <div class="row" id="shopCart">
                <!-- cart -->
                <div class="col-lg-9">
                    <div class="card border shadow-0 products cart-items">
                        <div class="m-4" id="cartItems">                           
                            <?php foreach ($cart as $i => $item) : ?>
                                <div class="row gy-3 mb-4 product cart-item" id="i<?= $i ?>" rel="<?= $i ?>">
                                    <div class="col-lg-5">
                                        <div class="me-lg-5">
                                            <div class="d-flex">
                                                <?php if (!$articles[$item['pid']][1]) : ?>
                                                    <img src="https://www.bootdey.com/image/380x380/008B8B/000000" alt="" class="border rounded me-3">
                                                <?php else : ?>
                                                    <img src="<?= $articles[$item['pid']][1] ?>" class="border rounded me-3" style="width: 96px; height: 96px;" />
                                                <?php endif; ?>
                                                <div class="">
                                                    <h5><a href="#" class="nav-link"><?= $articles[$item['pid']][0] ?></a></h5>
                                                    <p class="text-muted"><?= $item['ftext'];  ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-3 col-3 d-flex flex-row flex-lg-column text-nowrap">
                                        <div class="input-group w-auto justify-content-end align-items-center">
                                            <!--   <span class="qty input-group quantity w-24 justify-content-center align-items-center mb-0 border-opacity-75"> -->
                                            <input type="button" value="-" class="btn btn-primary button-minus icon-sm mx-0">
                                            <input type="number" step="1" max="10" class="qty-input product-count border-0 text-center  w-56 fs-4" data-id="<?= $i; ?>" data-price="<?= $item['price']; ?>" step="1" min="1" max="1000" name="[]qty-input" value="<?= $item["qty"]; ?>" pattern="[0-9]*" title="Quantity" inputmode="numeric">
                                            <input type="button" value="+" class="btn btn-primary button-plus icon-sm">
                                            <!-- </span>  -->
                                        </div>
                                    </div>
                                    <div class="col-lg-2 d-flex justify-content-center">
                                        <text class="h4"><span class="moneySymbol">₹</span><span class="cart-item-total ps-2"><?= $item["price"] * $item["qty"]; ?></span></text> <br>
                                        <!--<small class="text-muted text-nowrap"> $460.00 / per item </small> -->
                                    </div>
                                    <div class="col-lg-2 float-end">
                                        <a href="#!" class="btn btn-light border px-2 icon-hover-primary"><i class="fas fa-heart fa-sm px-1 text-secondary"></i></a>
                                        <!--<a href="#" class="btn btn-light border text-danger icon-hover-danger"> Remove</a> -->
                                        <a class="btn btn-light border text-danger icon-hover-danger remove-button product-delete" rel="<?= $i ?>"><span class="remove-icon"><i class="bi bi-trash"></i></span></a>
                                    </div>
                                </div>
                            <?php     $sum += $item["qty"] * $item["price"];  ?>
                            <?php endforeach; ?>
                        </div>
                        <div class="border-top pt-4 mx-4 mb-4">
                            <p><i class="fas fa-truck text-muted fa-lg"></i> Free Delivery within 1-2 weeks</p>
                            <p class="text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                aliquip
                            </p>
                        </div>
                    </div>
                </div>
                <!-- cart -->
                <!-- summary -->
                <div class="col-lg-3">
                    <div class="card mb-3 border shadow-0">
                        <div class="card-body">
                            <form>
                                <div class="form-group">
                                    <label class="form-label">Have coupon?</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control border" name="" placeholder="Coupon code">
                                        <button class="btn btn-light border">Apply</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card shadow-0 border">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <p class="mb-2">Total price:</p>
                                <p class="mb-2"><span class="moneySymbol">₹</span><span id="totPrice"><?= $sum; ?></span></p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="mb-2">Discount:</p>
                                <p class="mb-2 text-success">-<span class="moneySymbol">₹</span><span id="disPrice"><?= $discount;?></span></p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="mb-2">TAX:</p>
                                <p class="mb-2"><span class="moneySymbol">₹</span><span id="taxPrice"><?= $tax; ?></span></p>
                            </div>
                            <hr>
                            <div class="d-flex justify-content-between">
                                <p class="mb-2">Total price:</p>
                                <p class="mb-2 fw-bold"><span class="moneySymbol">₹</span><span id="netPrice"><?= $sum - $tax - $discount; ?></span></p>
                            </div>

                            <div class="mt-3">
                                <a href="/checkout-delivery" class="btn btn-success w-100 shadow-0 mb-2"> Make Purchase </a>
                                <a href="/" class="btn btn-light w-100 border mt-2"> Back to shop </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- summary -->
            </div>
        <?php endif; ?>
    </div>
</section>
<!--= app\modules\cart\widgets\CartWidget::widget();  ?-->