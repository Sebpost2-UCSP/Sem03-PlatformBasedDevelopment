<?php
	$host = "localhost";
	$dbUsername = "root";
	$dbPassword = "";
	$dbName = "test";

// Create connection
$conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT task_id, task_description, created_by_ID, created_for_ID, group_ID, priority_level, due_time, public, finished FROM task";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
	echo "<tr><td> Task ID  </td><td> Task Description  </td><td> Created By  </td><td> Created  For </td><td> Group ID  </td><td> Priority Level  </td><td> Due Time  </td><td> Public  </td><td> Finished  </td></tr><br>";
  while($row = $result->fetch_assoc()) {
    echo "<tr><td>" . $row["task_id"].  "</td><td>" . $row["task_description"].  "</td><td>" . $row["created_by_ID"].  "</td><td>" . $row["created_for_ID"]. "</td><td>" . $row["group_ID"].  "</td><td>" . $row["priority_level"].  "</td><td>" . $row["due_time"].  "</td><td>" . $row["public"]. "</td><td>" . $row["finished"].  "</td></tr><br>";
  }
} else {
  echo "0 results";
}
$conn->close();
?>