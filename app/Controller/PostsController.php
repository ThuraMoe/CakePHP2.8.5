<?php
	
	/**
	* 
	*/
	class PostsController extends AppController
	{
		public $helpers = array('HTML', 'Form');
		public $components = array('Flash', 'Paginator');

		// public $paginate = array(
		// 	'limit' => 10,
		// 	'order' => array(
		// 		'Post.id' => 'desc'
		// 	)
		// );
		
		public function index() {
			$this->Post->recursive = 0 ;
			$this->set('posts', $this->Paginator->paginate());
		}

		public function add() {
			if($this->request->is('post')) {
				$this->Post->create();
				// $this->Post->set($this->request->data);
				// if($this->Post->validates()) {
					if($this->Post->save($this->request->data)) {
						$this->Flash->set("Your post has been saved!", array("key"=>"success"));
						return $this->redirect(array("action"=>"index"));
					}
					$this->Flash->set("Something wrong!", array("key"=>"addError"));
				// }
			}
		}

		public function view($id = null) {
			if(!$id) {
				$error = "Invalid Post";
			}

			$post = $this->Post->findById($id);

			if(!$post) {
				$error = "Invalid Post";
				$this->set('error',$error);
			} else {			
				$this->set('post',$post);
			}
		}

		public function edit($id = null) {

			if(!$id) {
				$this->Flash->set("Invalid Post", array('key' => 'editError'));
			}

			$post = $this->Post->findById($id);

			if(!$post) {
				$this->Flash->set("Invalid Post", array('key' => 'editError'));
			}

			if($this->request->is(array('POST', 'PUT'))) {
				$this->Post->id = $id;
				if($this->Post->save($this->request->data)) {
					$this->Flash->set("Successfully Updated", array("key"=>"success"));
					return $this->redirect(array("action"=>"index"));
				}
				$this->Flash->set("Fail to update! ", array("key"=>"editError"));
			}

			if(!$this->request->data) {
				$this->request->data = $post;
			}
		}

		public function delete($id = null) {
			if($this->Post->delete($id)) {
				$this->Flash->set("Successfully Deleted", array("key" => "success"));
			} else {
				$this->Flash->set("Post cannot be deleted. Try again!", array("key" => "delError"));
			}
			return $this->redirect(array('action'=>'index'));
		}
	}

?>