<?php


  include 'connect.php';
  $id = $_POST['id'];
  if(isset($id)){
    $sql="UPDATE `trade_request`
    SET `complete`=1
    WHERE trade_request.id={$id}";
    $result = $conn->query($sql);
  } else {
    echo "Did not pick up request ID";
  }

 ?>
