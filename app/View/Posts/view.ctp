<div class='row'>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<?php if(isset($error)) : ?>
		<div class="alert alert-danger center">
			<span class="glyphicon glyphicon-warning-sign"></span> <?php echo $error; ?>
		</div>
		<?php endif; ?>

		<?php if(isset($post)): ?>
			<h1><?php echo $post['Post']['title']; ?></h1>
			<p><?php echo $post['Post']['body']; ?></p>
		<?php endif; ?>
	</div>
	<div class="col-md-2"></div>
</div>