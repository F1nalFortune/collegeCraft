<?php

include 'connect.php';
$output = '';
$buyer = $_POST['buyer'];
$seller = $_POST['seller'];
$complete = $_POST['complete'];
if(isset($buyer)){
  if($buyer != ''){
    $sql = "SELECT * from trade_request where buyer = {$buyer} AND complete=0";
  } else if($seller != ''){
    $sql = "SELECT * from trade_request where seller = {$seller} AND complete=0";
  } else if ($complete != ''){
    $sql = "(SELECT * from trade_request where seller = {$complete} AND complete=1) union (SELECT * from trade_request where buyer = {$complete} AND complete=1)";
  } else {

  }

  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    if($row['cash']==0){
      $output .="<div class='row' style='border: 1px solid black'>
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
                      <p>check</p>
                      <p>x</p>
                    </div>
                </div>";
    } else {
      $output .="
                <div class='row' style='border: 1px solid black'>
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
                      <p>check</p>
                      <p>x</p>
                    </div>
                </div>";

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
