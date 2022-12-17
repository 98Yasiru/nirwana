<?php
session_start();
include("dbcon.php");
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT COUNT(*) FROM users WHERE `email`='$email';";

$result = mysqli_query($db,$sql);
$row = $result->fetch_assoc();

$recordcount = $row['COUNT(*)'];

if ($recordcount == 0) {
	
	//save data on database
	mysqli_query($db,"INSERT INTO `users`(`name`, `email`, `password`, `id`) VALUES ('$name','$email','$password','$email');");
	header("location: index.php");
}

if ($recordcount != 0) {
	// code...
	$_SESSION['mailUsed'] = true;
	header("location: register.php");
}
?>