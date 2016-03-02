<?php App::import('Controller','Users');

echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<h1>
Topic--><?php echo $topic['Topic']['title'];?>
</h1>

<?php echo $this->HTML->link('Create New Post ',array('controller'=>'posts','action'=>'add',$topic['Topic']['id']));?>


<br>
<table>
<tr>
<th>SN.</th><th>User</th><th>Post</th>
</tr>
<?php
$count=1;
foreach($topic['Post'] as $post)
{
$ucontroller = new UsersController;
$uname=$ucontroller->getUsernameById($post['user_id']);

?>
<tr><td><?php echo $count.'.';?></td><td><?php echo $uname['User']['username'];?></td><td><?php echo $post['body'];?></td></tr>
<?php

$count++;
}
?>
</table>