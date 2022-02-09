<?php

$servername = "localhost";
$username = "root";
$password1 = "";
$dbname = "shoes_store";

$fName = $_POST['fName'];
$lName =  $_POST['lName'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$adressline = $_POST['adressline'];
$city = $_POST['city'];
$password = $_POST['password'];
$zipcode = $_POST['zipcode'];
$home = $_POST['home'];

// Create connection
$conn = mysqli_connect($servername, $username, $password1, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "INSERT INTO `customers` (`fName`, `lName`, `email`, `password1`, `phone`, `adress_line`, `city`, `zipcode`, `home`)
 VALUES ('$fName','$lName','$email','$password','$phone','$adressline','$city','$zipcode','$home')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);