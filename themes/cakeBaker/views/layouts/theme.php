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
    body {
      overflow-x: hidden;
      max-width: 100%;
    }
  </style>
</head>

<body data-bs-theme="dark">
  <?php $this->beginBody() ?>
  <header id="header">
    <?php echo $this->render('_headerNav'); ?>
    <div class="row">

    </div>
  </header>
  <main id="main" class="flex-shrink-0" role="main">
    <?= $content; ?>
  </main>
  <footer class="text-center text-white mt-4" style="background-color: #607D8B">
    <div class="container">
      <div class="row text-muted">
        <div class="col-md-6 text-center text-md-start">&copy; My Company <?= date('Y') ?></div>
        <div class="col-md-6 text-center text-md-end"><?= Yii::powered() ?></div>
      </div>
    </div>
  </footer>
  <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>