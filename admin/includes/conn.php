<?php
	$conn = new mysqli('localhost', 'root', 'yourpassword', 'databasename');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>