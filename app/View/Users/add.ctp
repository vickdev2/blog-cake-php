<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><?php echo __('Add User'); ?></legend>
	<?php
		echo $this->Form->input('username');
		echo $this->Form->input('password');
		echo $this->Form->input('full_name');
		
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
