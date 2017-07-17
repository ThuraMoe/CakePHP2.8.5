<?php
	/**
	* 
	*/
	class Post extends AppModel{
		public $validate = array(
			// 'title' => array(
			// 	'rule' => 'notBlank'
			// ),
			// 'body' => array(
			// 	'rule' => 'notBlank'
			// )
			'title' => array(
				'notBlank' => array(
					'rule' => 'notBlank',
					'message' => "This field can not be empty"
				),
				'length' => array(
					'rule' => array('minLength', 8),
					'message' => 'Minimum length of 8 characters'
				)
			),
			'body' => array(
				'rule' => 'notBlank',
				'message' => "This field is required"
			)
		);
		
	}
?>