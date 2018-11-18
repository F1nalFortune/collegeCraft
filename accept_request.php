<?php

include 'connect.php';
$output = '';
$id = $_POST['id'];
if(isset($id)){

  $sql="UPDATE `trade_request` SET `complete`=1 WHERE id={$id}";
  $result = $conn->query($sql);



} else {
  echo "location not set";
}

 ?>
