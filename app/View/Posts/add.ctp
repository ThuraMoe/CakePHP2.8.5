<?php echo $this->assign('title', 'Add New Post'); ?>
<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<h1>Create Post</h1>
		<br/>
		<?php if($this->Session->check('Message.addError')): ?>
			<div class="alert alert-danger">
				<?php echo $this->Flash->render("addError"); ?>
			</div>
		<?php endif; ?>

		<?php
			$title = "";
			$body = "";
			$v_title = "";
			$v_body = "";
			
			if(!empty($this->request->data)) :
				$title = $this->request->data['Post']['title'];
				$body = $this->request->data['Post']['body'];
			endif;

			if(!empty($this->validationErrors)) :
				$v_title = (!empty($this->validationErrors['Post']['title']))? $this->validationErrors['Post']['title']['0'] : "";
				$v_body = (!empty($this->validationErrors['Post']['body']))? $this->validationErrors['Post']['body']['0'] : "";
			endif;
		?>
		<form method="post" action="/BlogPlace/posts/add">
			<input type="hidden" name="_method" value="POST"/>
			<div class="form-group">
				<label for="title">Title :</label>
				<input type="text" name="data[Post][title]" id="PostTitle" value="<?php echo $title; ?>" class="form-control">
				<span class="warning"><?php echo $v_title; ?></span>
			</div>
			<div class="form-group">
				<label for="body">Content :</label>
				<textarea id="body" name="data[Post][body]" rows="5" class="form-control"><?php echo $body; ?></textarea>
				<span class="warning"><?php echo $v_body; ?></span>
			</div>
			<input type="submit" name="create" value="Create New Post" class="btn btn-info btn-block">
		</form>
	</div>
	<div class="col-md-4"></div>
</div>