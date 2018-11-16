<?php

  session_start();

  include '../connect.php';

  // GRAB ITEM ID FROM URL
  $item = $_GET['item'];

  $sql = "SELECT Users.location, Users.username, Users.email_address, Users.user_id, Users.name as FirstName, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
    FROM Users
    INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
    INNER JOIN Product ON Trade_ad.product_id=Product.product_id
    WHERE Trade_ad.id = {$item}";

  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    $location = $row['location'];
    $trade_id = $row['Trade_ID'];
    $product_id = $row['product_id'];
    $price = $row['price'];
    $first = $row['FirstName'];
    $category = $row['category'];
    $username = $row['username'];
    $email = $row['email_address'];
    $user_id = $row['user_id'];
    $name = $row['name'];
    include './partials/header.php';
    echo "
    <div id='sub-nav'>
      <a href='javascript:history.go(-1)'><-Back to previous page</a> | Listed in category:
    </div>
    ";
    echo "
  <div class='container'>
    <div class='row'>
      <div class='col-sm-3 card'>
        <img style='width:100%;' src='http://www.cupcakeboxes.co.nz/media/catalog/product/cache/8/image/9df78eab33525d08d6e5fb8d27136e95/s/a/sample_1.jpg' />
      </div>
      <div class='col-sm-6'>
        <div>
          <h3>{$name}</h3>
          <hr/>
          <p>Condition: NEW</p>

          <div class='row'>
            <div class='col-sm-4'>
              <p>$ {$price}</p>
            </div>
            <div class='col-sm-4'>
              <button>Buy Now</button>
              <button>Trade</button>
            </div>
          </div>

        </div>
      </div>
      <div class='col-sm-3 card'>
        <h4>Seller Information</h4>
        <p>{$username}RATING</p>
        <a href='#'>Contact</a><br/>
        <a href='#'>See other items</a>
      </div>
    </div>
  </div>
    ";
  }
 ?>

<html>
  <head>
    <?php include './partials/head.html' ?>
  </head>
  <body>


  </body>
</html>
