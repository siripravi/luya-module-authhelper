<?php

use yii\widgets\Menu;
use siripravi\catalog\models\Group;
?>

<div class="mega-content px-4">
  <div class="container-fluid">
    <div class="row">
      <div class="col-12 col-sm-4 col-md-3 py-4">
        <h5>Pages</h5>
        <?php
        /** @var $categories Category[] */
        $categories = Group::getMain();//!Yii::$app->cache->exists('_categories-' . Yii::$app->language) ? Category::getMain() : [];
        $items = [];
        foreach ($categories as $category) {
          $items[$category->id] = [
            'label' => $category->name,
            'url' => (count($category->categories)) ? ['category/pod', 'slug' => $category->slug] : ['category/view', 'slug' => $category->slug],
            'options' => [
              'tag' => false,
            ],
          ];
        }
        echo Menu::widget([
          'items' => $items,
          'linkTemplate' => '<a class="list-group-item text-center" href="{url}">{label}</a>',
          'itemOptions' => ['class' => 'list-group-item'],
          'options' => [
            'tag' => 'div',
            //'class' => 'dropdown-menu rounded-0 w-100',
            'class' => 'list-group',
            // 'aria-labelledby' => "dropdownButton"
          ],
        ]);
        ?>
      </div>

    </div>
  </div>
</div>