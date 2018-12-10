<?php
  include 'connect.php';

  $date = $_POST['date'];
  $review = $_POST['review'];
  $feedback = $_POST['feedback'];
  $item = $_POST['item'];
  $user = $_POST['user'];



    $sql="INSERT INTO `review`(`review`, `trade_id`, `feedback`, `created`)
    VALUES ({$review},{$item},'{$feedback}','{$date}')";
    $result = $conn->query($sql);


 ?>
