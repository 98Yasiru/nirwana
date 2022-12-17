<?php
include("dbcon.php");
session_start();
$docid = $_GET['uname'];
$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$phone = $_REQUEST['phone'];
$note = $_REQUEST['message'];
$date = $_REQUEST['date'];

$paymentID = uniqid();

$_SESSION['paymentid'] = $paymentID;


mysqli_query($db, "INSERT INTO `booking`(`doctor`, `patient`, `phone`, `date`, `note`) VALUES ('$docid','$name','$phone','$date','$note')");
header("location: https://buy.stripe.com/test_aEU17ceKM0TxcDu3cc");
