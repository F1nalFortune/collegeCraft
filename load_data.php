<?php

include 'connect.php';
$output = '';
if(isset($_POST["location"])){

  if($_POST["location"] != ''){
    $sql = "SELECT * FROM ( SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name FROM Users INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller INNER JOIN Product ON Trade_ad.product_id=Product.product_id ) as Full_Ad WHERE location = '{$_POST["location"]}'";
  } else {
    $sql = "SELECT * FROM ( SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name FROM Users INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller INNER JOIN Product ON Trade_ad.product_id=Product.product_id ) as Full_Ad";
  }

  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    $output .= "<div class='col-sm-4' style='border: 1px solid black'>
                  <div>{$row['name']}</div>
              </div>";
  }

  echo $output;
} else {
  echo "location not set";
}

 ?>
