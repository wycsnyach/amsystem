<?php
	$conn = new mysqli('localhost', 'root', 'Character2', 'amsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>