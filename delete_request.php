<?php

  include 'connect.php';
  $id = $_POST['id'];
  if(isset($id)){

    $sql="DELETE FROM `trade_request` WHERE id={$id}";
    $result = $conn->query($sql);



  } else {
    echo "Did not pick up request ID";
  }

 ?>
