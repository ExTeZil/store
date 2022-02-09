<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shoes_store";

$Model = $_POST['Model'];
$idBrands = $_POST['Brand'];
$idSoles = $_POST['Soles'];
$idTypes = $_POST['Type'];
$idSexs = $_POST['Sex'];
$idColors = $_POST['Color'];
$idLightnigs = $_POST['Lightning'];
$imgsrc = $_POST['srcimg'];
$Price = $_POST['price'];

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "INSERT INTO `shoes`(`Model`,`idBrands`,`idSoles`, 
                    `idTypes`,`idSexs`,`idColors`, 
                    `idLightnigs`,`imgsrc`,`Price`) 
VALUES ('.$Model.','.$idBrands.','.$idSoles.','.$idTypes.','.$idSexs.','.$idColors.','.$idLightnigs.','$imgsrc.','.$Price.')";
if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);

