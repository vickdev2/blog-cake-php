<?php

class TopicsController extends AppController{
public $components= array('Session');
public function index(){
$data=$this->Topic->find('all');
$this->set('topics',$data);
}
public function beforeFilter(){
$this->Auth->allow('index');
}
public function add(){

	if($this->request->is('post')){
		$this->Topic->create();
		if(AuthComponent::user('role')==1)
		$this->request->data['Topic']['visible']=2;
		$this->request->data['Topic']['user_id']=AuthComponent::user('id');
		if($this->Topic->save($this->request->data)){
			$this->Session->setFlash('The topic has been created');
			$this->redirect('index');
		}
	}
}

public function view($id){
$data=$this->Topic->findById($id);
$this->set('topic',$data);
}
public function edit($id){
// role 1 mean regular user
if(AuthComponent::user('role')==1){
$this->redirect('index');
}
$data=$this->Topic->findById($id);
if($this->request->is(array('post','put'))){

	if($this->Topic->save($this->request->data)){
	$this->Session->setFlash('The topic has been Edited');
	$this->redirect('index');
	}
}
$this->Topic->id=$id;
$this->request->data=$data;
}
public function delete($id){
// role 1 mean regular user
if(AuthComponent::user('role')==1){
$this->redirect('index');
}
$this->Topic->id=$id;
if($this->request->is(array('post','put'))){
$this->Topic->id=$id;
	if($this->Topic->delete()){
	$this->Session->setFlash('The topic has been Deleted');
	$this->redirect('index');
	}
}
}
}

?>