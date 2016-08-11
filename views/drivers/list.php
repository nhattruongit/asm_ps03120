<?php
use yii\helpers\Html;
?>
<h1>List</h1>
<?=
Html::a('Create Driver',['create'],['class'=>'btn btn-success'])
?><br/>
<?php 
	foreach ($model as $driver){
		echo Html::a($driver->name,['update','id'=> $driver->id]);
		echo '<br/>';
		}
?>