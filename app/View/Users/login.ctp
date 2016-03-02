<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<?php 


		echo $this->Form->create('User'); 
		echo $this->Form->input('username');
		echo $this->Form->input('password');
		
		echo $this->Form->end(__('Login'));
?>