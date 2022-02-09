<?php
$email = $_POST['email'];
$password = $_POST['password'];

$con = new mysqli("localhost","root","","shoes_store");
if($con->connect_error){
    die("Не вдалося підлючитися до БД".$con->connect_error);
}
else {
    $stmt = $con->prepare("SELECT * FROM customers WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt_result = $stmt->get_result();
    if ($stmt_result->num_rows > 0) {
        $data = $stmt_result->fetch_assoc();
        if ($data['password1'] == $password) {
            echo "<h2>Вхід успішний!</h2>";
        } else {
            echo "<h2>Email або пароль не вірний!</h2>";
        }
    } else {
        echo "<h2>Email або пароль не вірний!</h2>";
    }
}