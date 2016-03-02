<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<h2>create Topic</h2>
<?php 

echo $this->Form->create('Topic');
//echo $this->Form->input('user_id');
echo $this->Form->input('title');
echo $this->Form->select('visible',array('1'=>'Published','2'=>'Hidden'),array('empty'=>false));
echo $this->Form->end('Save Topic');

?>