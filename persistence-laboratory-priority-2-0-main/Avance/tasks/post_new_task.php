<?php

$task_description = $_POST['task_description'];
$created_by_ID = $_POST['created_by_ID'];
$created_for_ID = $_POST['created_for_ID'];
$group_ID = $_POST['group_ID'];
$priority_level = $_POST['priority_level'];
$due_time = $_POST['due_time'];
$public = $_POST['public'];
$finished = $_POST['finished'];

if (!empty($task_description) || !empty($created_by_ID) || !empty($created_for_ID) || !empty($group_ID) || !empty($priority_level) || !empty($due_time) ||  !empty($public) || !empty($finished))
{

	include("../conexion.php");

	$INSERT = "INSERT Into task (task_description,created_by_ID,created_for_ID,group_ID,priority_level,due_time,public,finished) value (?,?,?,?,?,?,?,?)";

	$stmt = $conexion->prepare($INSERT);
	$stmt ->bind_param("siiiisii",$task_description,$created_by_ID,$created_for_ID,$group_ID,$priority_level,$due_time,$public,$finished);
	$stmt ->execute();
	$stmt -> close();
	$conexion ->close();
	echo "New task created successfully";
	echo"<br><a href='../pagina.php'>Volver a home</a></div>";

}

else {
	echo "All fields must be filled up" ;
	die();
}

?>