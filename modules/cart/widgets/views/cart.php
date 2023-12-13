<?php if (!empty($cart)) {
	$sum = 0;

?>
<div class="" id="shopCart">		
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-primary">Your cart</span>
					<span class="count badge bg-primary rounded-pill"><?= count($cart); ?></span>
				</h4>
				<ul class="cart-products list-group mb3">
					<?php foreach ($cart as $i => $item) { ?>
						<li class="product list-group-item d-flex justify-content-between bg-light" id="i<?= $i ?>" rel="<?= $i ?>">
							<div>
								<span class="product-image">
									<?php if (!$articles[$item['pid']][1]) : ?>
										<!--<img src="https://via.placeholder.com/75x50/ffffff/cccccc?text=PHOTO" alt="Product Photo"> -->
									<?php else : ?>
										<img src="<?= $articles[$item['pid']][1] ?>" class="img-responsive img-rounded" />
									<?php endif; ?>
								</span>

								<small class="text-muted"></small>
							</div>
							<a href="#" class="product-link">

								<span class="product-details">
									<h3><?= $articles[$item['pid']][0] ?></h3>
									<span><!--?= $item["price"] ?-->
										<?= $item['ftext'];  ?>
									</span>
									<span class="qty-price">
										<span class="qty">
											<button class="minus-button" id="minus-button-1">-</button>
											<input type="number" id="qty-input-1" class="qty-input product-count" data-id="<?= $i; ?>" , data-price="<?= $item['price']; ?>" step="1" min="1" max="1000" name="[]qty-input" value="<?= $item["qty"]; ?>" pattern="[0-9]*" title="Quantity" inputmode="numeric">
											<button class="plus-button" id="plus-button-1">+</button>
										</span>
										<span class="price"><?= $item["price"] * $item["qty"]; ?></span>
									</span>
								</span>
							</a>
							<a class="remove-button product-delete" rel="<?= $i ?>"><span class="remove-icon">X</span></a>
						</li>
					<?php
						$sum += $item["qty"] * $item["price"];
					} ?>
					<li class="list-group-item d-flex justify-content-between">
						<span>Total (USD)</span>
						<strong class="amount"><?= $sum;  ?></strong>
					</li>
				</ul>
				<!--<div class="col-4">
					<div class="totals">
						<div class="subtotal">
							<span class="label">Subtotal:</span> <span class="amount"></span>
						</div>
					</div>
					<div class="action-buttons">
						<a class="view-cart-button" href="#">Cart</a><a class="checkout-button" href="/cart/bag/index">Checkout</a>
					</div>
				</div>  -->
			<?php }  ?>
</div>