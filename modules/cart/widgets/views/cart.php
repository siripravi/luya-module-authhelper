<?php if (!empty($cart)) {
	$sum = 0;
?>
	<!-- Cart Page Start -->
	<div class="row" id="shopCart">
		<div class="cart-items">
			<?php foreach ($cart as $i => $item) { ?>
				<div class="card border shadow-none cart-item" id="i<?= $i ?>" rel="<?= $i ?>">
					<div class="card-body">
						<div class="d-flex align-items-start border-bottom pb-3">
							<div class="me-4">
								<?php if (!$articles[$item['pid']][1]) : ?>
									<img src="https://www.bootdey.com/image/380x380/008B8B/000000" alt="" class="avatar-lg rounded">
								<?php else : ?>
									<img src="<?= $articles[$item['pid']][1] ?>" class="img-responsive img-rounded" />
								<?php endif; ?>
							</div>
							<div class="flex-grow-1 align-self-center overflow-hidden">
								<div>
									<h5 class="text-truncate font-size-18"><a href="#" class="text-dark"><?= $articles[$item['pid']][0] ?></a></h5>
									<p class="text-muted mb-0">
										<i class="bx bxs-star text-warning"></i>
										<i class="bx bxs-star text-warning"></i>
										<i class="bx bxs-star text-warning"></i>
										<i class="bx bxs-star text-warning"></i>
										<i class="bx bxs-star-half text-warning"></i>
									</p>
									<p class="mb-0 mt-1">Color : <span class="fw-medium"><?= $item['ftext'];  ?></span></p>
								</div>
							</div>
							<div class="flex-shrink-0 ms-2">
								<ul class="list-inline mb-0 font-size-16">
									<li class="list-inline-item">
										<a href="#" class="text-muted px-1">
											<i class="mdi mdi-trash-can-outline"></i>
										</a>
									</li>
									<li class="list-inline-item">
										<a href="#" class="text-muted px-1">
											<i class="mdi mdi-heart-outline"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>

						<div>
							<div class="row">
								<div class="col-md-4">
									<div class="mt-3">
										<p class="text-muted mb-2">Price</p>
										<h5 class="mb-0 mt-2"><span class="text-muted me-2"><del class="font-size-16 fw-normal">$500</del></span>$450</h5>
									</div>
								</div>
								<div class="col-md-5">
									<div class="mt-3">
										<p class="text-muted mb-2">Quantity</p>
										<div class="input-group quantity mt-4" style="width: 100px;">
											<div class="input-group-btn">
												<button class="btn btn-sm btn-minus rounded-circle bg-light border minus-button">
													<i class="fa fa-minus"></i>
												</button>
											</div>
											<input type="text" class="qty-input product-count form-control form-control-sm text-center border-0" data-id="<?= $i; ?>" data-price="<?= $item['price']; ?>" step="1" min="1" max="1000" name="[]qty-input" value="<?= $item["qty"]; ?>" pattern="[0-9]*" title="Quantity" inputmode="numeric">

											<div class="input-group-btn">
												<button class="btn btn-sm btn-plus rounded-circle bg-light border plus-button">
													<i class="fa fa-plus"></i>
												</button>
											</div>

											<span class="cart-item-total"><?= $item["price"] * $item["qty"]; ?></span>

										</div>
										<div class="col-md-3">
											<div class="mt-3">
												<p class="text-muted mb-2">Total</p>
												<h5>$900</h5>
											</div>
										</div>
									</div>
								</div>
								<a class="remove-button product-delete" rel="<?= $i ?>"><span class="remove-icon">X</span></a>
							</div>
						</div>
					</div>
				</div>
			<?php
				$sum += $item["qty"] * $item["price"];
			} ?>
		</div>
	</div>
<?php }  ?>