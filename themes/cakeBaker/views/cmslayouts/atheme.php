<?php


/**
 * @var string[] $placeholders
 */
?>
<div class="row">
    <div class="col-12 ps-5">
<?php if ($placeholders['header']) : ?>
 <?= $placeholders['header'] ?>
 
 <?php endif ?>
 </div></div>
<!-- Main -->
<section id="main" class="wrapper">

    <?= $placeholders['main'] ?>
</section>

<?php if ($placeholders['highlights']) : ?>
    <!-- Highlights -->
    <section id="highlights" class="wrapper style3">
        <div class="container">
            <?= $placeholders['highlights'] ?>
        </div>
    </section>
<?php endif ?>