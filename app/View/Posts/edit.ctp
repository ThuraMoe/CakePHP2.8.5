<?php $this->assign('title', 'Edit Post'); ?>
<div class='row'>
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<h1>Edit Post</h1>

		<?php if($this->Session->check('Message.editError')) : ?>
			<div class="alert alert-danger">
				<?php echo $this->Flash->render("editError"); ?>
			</div>
		<?php endif; ?>

		<?php
			if(!empty($this->validationErrors)) :
				$v_title = (!empty($this->validationErrors['Post']['title']))? $this->validationErrors['Post']['title']['0'] : "";
				$v_body = (!empty($this->validationErrors['Post']['body']))? $this->validationErrors['Post']['body']['0'] : "";
			endif;

			if(!empty($this->request->data)):
				$id = $this->request->data['Post']['id'];
				$title = $this->request->data['Post']['title'];
				$body = $this->request->data['Post']['body'];
		?>
			<form method="post" action="/BlogPlace/posts/edit/<?php echo $id; ?>">
				<input type="hidden" name="_method" value="PUT">
				<input type="hidden" name="data[Post][id]" value="<?php echo $id;?>">
				<div class="form-group">
					<label for="title">Title :</label>
					<input type="text" name="data[Post][title]" id="title" class="form-control" value="<?php echo $title; ?>">
					<span class="warning">
						<?php echo $v_title;?>
					</span>
				</div>
				<div class="form-group">
					<label for="body">Content :</label>
					<textarea id="body" name="data[Post][body]" rows="5" class="form-control"><?php echo $body; ?>
					</textarea>
					<span class="warning"><?php echo $v_body;?></span>
				</div>
				<input type="submit" name="create" value="Update" class="btn btn-info btn-block">
			</form>

		<?php endif; ?>

	</div>
	<div class="col-md-4">
	</div>
</div>