<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<h2>create New Post</h2>
<?php 

echo $this->Form->create('Post');

echo $this->Form->input('body');
echo $this->Form->end('Create Post');

?>