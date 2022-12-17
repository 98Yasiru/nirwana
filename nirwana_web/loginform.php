<?php
session_start();
include("dbcon.php");

$email = $_REQUEST['username'];
$password = $_REQUEST['password'];

$sql = "SELECT COUNT(*) FROM users WHERE `email`='$email';";


$result = mysqli_query($db,$sql);
$row = $result->fetch_assoc();

$recordcount = $row['COUNT(*)'];

if ($recordcount > 0) {

	$sql = "SELECT `password`,`name` FROM `users` WHERE `email`='$email';";

	$result = mysqli_query($db,$sql);
	$row = $result->fetch_assoc();

	$passworddb = $row['password'];
	$name = $row['name'];
	if ($passworddb == $password) {

		$_SESSION['uname'] = $name;
        $_SESSION['login'] = True;
		header("location: dashboard.php");
	}

	
}

if ($recordcount == 0) {
	
}

 ?>