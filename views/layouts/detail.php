<?php $this->beginContent(); ?>

<!--php $this->widget('Breadcrumbs', array('crumbs'=>$this->crumbs)); ?-->
<p>
In this layout, we enclose the view content in a pair of [CController::beginContent] and [CController::endContent] method calls. Because we do not pass any parameter to the [CController::beginContent], it means the default layout (which is main we just developed) will be applied to this view.

Notice also that we include a BreadCrumbs widget at the beginning of the view. The widget is a customly developed to display breadcrumbs (navigation path) of the current page. The reference $this stands for the current controller, and we use its crumbs property to store the breadcrumbs data.
</p>
<div id="content">
	<?php echo $content; ?>
</div>

<?php $this->endContent(); ?>