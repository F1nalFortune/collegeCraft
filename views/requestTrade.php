<?php

include '../connect.php';
include '../requiredAuth';
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
    $sql = "INSERT INTO trade_request(seller, buyer, request, offer, price, cash, trade, comment, complete) VALUES({$seller}, {$buyer}, {$request}, {$offer}, {$price}, 1, 0, '{$comment}', 0)";
  } else {
    $sql = "INSERT INTO trade_request(seller, buyer, request, offer, price, cash, trade, comment, complete) VALUES({$seller}, {$buyer}, {$request}, {$offer}, {$price}, 0, 1, '{$comment}', 0)";
  }
    $result = $conn->query($sql);


 ?>
