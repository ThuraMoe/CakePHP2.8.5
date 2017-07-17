<?php
	$this->assign('title',"Home"); 
?>

<div class="row">
	<div class="col-md-12">
		<?php if($this->Session->check("Message.success")) : ?>
			<div class="alert alert-success">
				<?php echo $this->Flash->render("success"); ?>
			</div>
		<?php endif; ?>

		<?php if($this->Session->check("Message.delError")) : ?>
			<div class="alert alert-danger">
				<?php echo $this->Flash->render("error"); ?>
			</div>
		<?php endif; ?>
	</div>
</div>

<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4"></div>
	<div class="col-md-4" align="right">
		<a href="/BlogPlace/posts/add" class="btn btn-success btn-lg">Create New Post</a>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<div class="table-reponsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>No.</th>
						<th>Title</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<?php
					$count = 0;
					foreach($posts as $post): 
						$count++;
				?>
					<tr>
						<td> <?php echo $count; ?> </td>
						<td> 
							<b><a href="/BlogPlace/posts/view/<?php echo $post['Post']['id']; ?>"><?php echo $post['Post']['title']; ?></a></b> 
						</td>
						<td> 
							<a href="/BlogPlace/posts/edit/<?php echo $post['Post']['id']; ?>" class="btn btn-info"><span class="glyphicon glyphicon-edit"></span>Edit</a>
							<a href="/BlogPlace/posts/delete/<?php echo $post['Post']['id']; ?>" class="btn btn-danger btn_delete"><span class="glyphicon glyphicon-trash"></span>Delete</a>
						</td>
					</tr>
				<?php endforeach; ?>
				</tbody>
			</table>
			
			<p>
    <?php
    echo $this->Paginator->counter(array(
    'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')

    ));

    ?>   </p>

    <div class="paging">

    <?php

        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));

        echo $this->Paginator->numbers(array('separator' => ''));

        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));

    ?>

    </div>

		</div>
	</div>
</div>
	