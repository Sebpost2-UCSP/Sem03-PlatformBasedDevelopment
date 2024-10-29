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
	$host = "localhost";
	$dbUsername = "root";
	$dbPassword = "";
	$dbName = "test";

	$conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

		$INSERT = "INSERT Into task (task_description,created_by_ID,created_for_ID,group_ID,priority_level,due_time,public,finished) value (?,?,?,?,?,?,?,?)";

	$stmt = $conn->prepare($INSERT);
	$stmt ->bind_param("siiiisii",$task_description,$created_by_ID,$created_for_ID,$group_ID,$priority_level,$due_time,$public,$finished);
	$stmt ->execute();
	$stmt -> close();
	$conn ->close();
	echo "New task created successfully";

	header("refresh:3;url=create_task.html");

}

else {
	echo "All fields must be filled up" ;
	die();
}

?>