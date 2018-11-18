<?php
include 'requiredAuth.php';
include 'connect.php';
$output = '';
$category = $_POST['category'];
$location = $_POST['location'];
if($category == 'ALL'){
  $category = '';
}
if(isset($location)){
  if($location != '' && $category != ''){
    $sql = "SELECT *
    FROM (
      SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
      INNER JOIN Product ON Trade_ad.product_id=Product.product_id
    ) as Full_Ad
    WHERE location = '{$location}'
    AND category = '{$category}'";
  } else if($location != '' && $category == ''){
    $sql = "SELECT *
    FROM (
      SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
      INNER JOIN Product ON Trade_ad.product_id=Product.product_id
    ) as Full_Ad
    WHERE location = '{$location}'";
  } else if($location == '' && $category != ''){
    $sql = "SELECT *
    FROM (
      SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
      INNER JOIN Product ON Trade_ad.product_id=Product.product_id
    ) as Full_Ad
    WHERE category = '{$category}'";
  } else {
    $sql = "SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
      INNER JOIN Product ON Trade_ad.product_id=Product.product_id";
  }

  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    $output .= "<div class='col-sm-4' style='border: 1px solid black'>
                  <div><a href='item.php?item={$row['Trade_ID']}'>{$row['name']}</div>
              </div>";
  }

  echo $output;
  if ($output === ''){
    echo "0 results";
  }
} else {
  echo "location not set";
}

 ?>
