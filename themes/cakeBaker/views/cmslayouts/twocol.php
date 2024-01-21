<?php

use yii\widgets\Breadcrumbs;
use yii\helpers\Html;
?>
<section class="mt-3">
  <div class="container">
    <div class="row">
      <div class="col-12" id="twocol-top">
        <?= $placeholders['top']; ?>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4" id="twocol-left">
        <!--= $placeholders['left']; ?-->
        <div class="ecommerce-gallery" data-mdb-zoom-effect="true" data-mdb-auto-height="true">
          <div class="row py-3 shadow-5">
            <div class="col-12 mb-1">
              <div class="lightbox">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" alt="Gallery image 1" class="ecommerce-gallery-main-img active w-100" />
              </div>
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/14a.webp" alt="Gallery image 1" class="active w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/12a.webp" alt="Gallery image 2" class="w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/13a.webp" alt="Gallery image 3" class="w-100" />
            </div>
            <div class="col-3 mt-1">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp" data-mdb-img="https://mdbcdn.b-cdn.net/img/Photos/Horizontal/E-commerce/Vertical/15a.webp" alt="Gallery image 4" class="w-100" />
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-8" id="twocol-right">
        <?= $placeholders['right']; ?>
      </div>
    </div>
    <div class="col-12" id="twocol-bottom">
      <?= $placeholders['bottom']; ?>
      <div class="ecommerce-gallery" data-zoom-effect="true">
      </div>
    </div>
  </div>
</section>