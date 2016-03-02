<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<h2>Edit Topic</h2>
<?php 

echo $this->Form->create('Topic');

echo $this->Form->input('title');
echo $this->Form->input('visible');
echo $this->Form->end('Edit Topic');

?>