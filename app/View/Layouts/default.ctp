<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php //echo $cakeDescription ?>:
		<?php echo $this->fetch('title'); ?>
	</title>
	<!-- <meta name="veiwport" content="width=device-width, initial-scale=1"> -->
	<?php

		echo $this->Html->meta('icon');

		// echo $this->Html->css('cake.generic');
		echo $this->Html->css('bootstrap.css');
		echo $this->Html->css('custom.css');

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');

	?>
</head>
<body>
	<nav class='navbar navbar-default'>
		<div class="container-fluid">
			<div class="navbar-header">
				<div class="navbar-brand" >BlogPlace</div>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/BlogPlace/posts">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class='glyphicon glyphicon-user'></span> Sign Up</a></li>
				<li><a href="#"><span class='glyphicon glyphicon-log-in'></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">

			<?php echo $this->Flash->render(); ?>

			<?php echo $this->fetch('content'); ?>
	</div>
	<?php 
		echo $this->Html->script('jquery-2.1.4.min.js');
		echo $this->Html->script('bootstrap.min.js');
		echo $this->Html->script('custom.js');
	?>
</body>
</html>
