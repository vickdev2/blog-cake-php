<?php echo $this->HTML->link('Home',array('controller'=>'topics','action'=>'index'));?>
<h2>Topics</h2>
<?php echo $this->HTML->link('Create New Topic',array('controller'=>'topics','action'=>'add'));?>
<br>
<?php
	if(AuthComponent::user()){
	 echo $this->HTML->link('Logout',array('controller'=>'users','action'=>'logout'));
	}else{
		echo $this->HTML->link('Login',array('controller'=>'users','action'=>'login')).' or '.$this->HTML->link('Register',array('controller'=>'users','action'=>'add'));
	}
?>
<br>
<table><tr><th>Title</th>
<th>User ID</th>
<?php if(AuthComponent::user('role')==2){?>
<th>Published</th>
<?php }?>
<th>Created</th>
<th>Modified</th>
<?php if(AuthComponent::user('role')==2){?>
<th>Edit</th>
<th>Delete</th>
</tr>
<?php }?>
<?php
	if(AuthComponent::user('role')==2){?>
		<?php 
		foreach($topics as $topic){
		?>
		<tr>
		<td><?php echo $this->HTML->link($topic['Topic']['title'],array('controller'=>'topics','action'=>'view',$topic['Topic']['id']));?></td>
		<td><?php echo $topic['User']['username'];?></td>
		<td><?php echo $topic['Topic']['visible'];?></td>
		<td><?php echo $topic['Topic']['created'];?></td>
		<td><?php echo $topic['Topic']['modified'];?></td>
		<td><?php echo $this->HTML->link('edit',array('controller'=>'topics','action'=>'edit',$topic['Topic']['id']));?></td>
		<td><?php echo $this->Form->postlink('delete',array('controller'=>'topics','action'=>'delete',$topic['Topic']['id']),array('confirm'=>'Are you sure want to delete'));?></td>
		</tr>
		<?php
		}
	}
	if(AuthComponent::user('role')==1||!AuthComponent::user()){?>
		<?php 
		foreach($topics as $topic){
			if($topic['Topic']['visible']==1){
			?>
			<tr>
			<td><?php echo $this->HTML->link($topic['Topic']['title'],array('controller'=>'topics','action'=>'view',$topic['Topic']['id']));?></td>
			<td><?php echo $topic['User']['username'];?></td>
			<td><?php echo $topic['Topic']['created'];?></td>
			<td><?php echo $topic['Topic']['modified'];?></td>
			</tr>
			<?php
			}
		}
	}
unset($topics);
?>
</table>