<?php

include '../connect.php';

$request = $_POST['request'];
$comment = $_POST['comment'];
$offer = $_POST['offer'];
$price = $_POST['price'];
$seller = $_POST['seller'];
$buyer = $_POST['buyer'];
$cash = $_POST['cash'];
$trade = $_POST['trade'];


//IF REQUEST IS A TRADE
//INSERT TRADE-REQUEST INTO DATABASE

  if($_POST['trade']==false){
    $sql = "INSERT INTO trade_request(seller, buyer, request, offer, price, cash, trade, comment) VALUES({$seller}, {$buyer}, {$request}, {$offer}, {$price}, 1, 0, '{$comment}')";
  } else {
    $sql = "INSERT INTO trade_request(seller, buyer, request, offer, price, cash, trade, comment) VALUES({$seller}, {$buyer}, {$request}, {$offer}, {$price}, 0, 1, '{$comment}')";
  }
    $result = $conn->query($sql);


 ?>
