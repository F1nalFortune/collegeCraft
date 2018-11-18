<?php

include 'connect.php';
$output = '';
$buyer = $_POST['buyer'];
$seller = $_POST['seller'];
$complete = $_POST['complete'];
if(isset($buyer)){
  if($buyer != ''){
    $sql = "SELECT trade_request.id, trade_request.seller, trade_request.buyer, trade_request.request, trade_request.offer, trade_request.price, trade_request.cash, trade_request.trade, trade_request.comment, trade_request.complete, users.username
from trade_request
INNER JOIN users on trade_request.buyer=users.user_id
WHERE buyer = {$buyer} and complete=0";
  } else if($seller != ''){
    $sql = "SELECT trade_request.id, trade_request.seller, trade_request.buyer, trade_request.request, trade_request.offer, trade_request.price, trade_request.cash, trade_request.trade, trade_request.comment, trade_request.complete, users.username
from trade_request
INNER JOIN users on trade_request.buyer=users.user_id where seller = {$seller} AND complete=0";
  } else if ($complete != ''){
    $sql = "(SELECT * from trade_request where seller = {$complete} AND complete=1) union (SELECT * from trade_request where buyer = {$complete} AND complete=1)";
  } else {

  }


  $result = $conn->query($sql);
  if($seller !=''){
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-7'>
            <h6>{$row['username']} is requesting...</h6>
          </div>
          <div class='col-sm-5'>
          </div>
          <div class='col-sm-3'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-5'>
            <div>
              <i id='{$row['id']}' class='far fa-check-circle fa-2x'></i>
              <i id='{$row['id']}' class='far fa-times-circle fa-2x'></i>
            </div>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-7'>
            <h6>{$row['username']} is requesting...</h6>
          </div>
          <div class='col-sm-5'>
          </div>
          <div class='col-sm-3'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p>$ {$row['price']}</p>
          </div>
          <div class='col-sm-5'>
            <div>
              <i id='{$row['id']}' class='far fa-check-circle fa-2x'></i>
              <i id='{$row['id']}' class='far fa-times-circle fa-2x'></i>
            </div>
          </div>
        </div>";
      }
    }

  } else {
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p>$ {$row['price']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
        </div>";

      }
    }

  }

  echo $output;
  if ($output === ''){
    echo "0 results";
  }

} else {
  echo "location not set";
}

 ?>
