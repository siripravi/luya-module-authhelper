<?php

/**
 * @var string[] $placeholders
 */
?>
<header>
    <!-- echo $this->render('_headerNav'); ?-->
    <?php if ($placeholders['homeintro']) : ?>
        <?= $placeholders['homeintro'] ?>
    <?php endif ?>
</header>
<!-- Main -->
<main>
    <?php if ($placeholders['homemain']) : ?>
        <?= $placeholders['homemain'] ?>
    <?php endif ?>
</main>