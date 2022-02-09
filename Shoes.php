<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Товари</title>
    <link rel="stylesheet" href="shoes_style.css">

</head>
<body class="bac">
<header><b>Товари</b></header>
<button onclick="document.location ='minsort_shoes.php'">
    Сортувати за збільшенням ціни
</button>
<button onclick="document.location ='maxsort_shoes.php'">
    Сортувати за зменешенням ціни
</button>
<div class="shop_content">

    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shoes_store";

    $mysqli = new mysqli($servername, $username, $password, $dbname);
    $query = "SELECT * FROM shoes ";
    $results = $mysqli->query($query);

    $query2 = "SELECT brands.Brand
                    FROM shoes JOIN brands
                        ON shoes.idBrands = brands.idBrands";
    $result2 = $mysqli->query($query2);

    while ($row = $results->fetch_assoc()){
        $row2 = $result2->fetch_assoc();
        echo '<div class="product_box">
        <img src="'.$row["imgsrc"].'" alt="" class="product_img">
        <h2 class="product_brand">'.$row2["Brand"].'</h2>
        <h3 class="product_model">'.$row["Model"].'</h3>
        <span class="price">'.$row["Price"].'</span>
        <br>
        <button type="button" class="but_buy"> Купити</button>
    </div>';}
    ?>

</div>
</body>
</html>