<?php

  session_start();

  include '../connect.php';

  // GRAB USER ID FROM URL
  $user = $_GET['user'];

  // GRAB USER FEEDBACK INFO
  // GET BUYERS USERNAME
  $info = "  SELECT review.id, review.review, review.trade_id, review.feedback, review.created, review.buyer, trade_ad.product_id, trade_ad.price, trade_ad.qty, trade_ad.seller, product.name, users.username
  FROM review
  INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
  INNER JOIN product ON trade_ad.product_id=product.product_id
  INNER JOIN users ON users.user_id=trade_ad.seller
  WHERE seller = {$user}";
  $result = $conn->query($info);


 ?>

<html>
  <head>
    <?php include './partials/head.html' ?>
  </head>
  <body>
      <?php include './partials/header.php' ?>
      <div id='sub-nav'>
        <a href='javascript:history.go(-1)'>
          <-Back to previous page
        </a>
      </div>
    <div class='row' style='padding-bottom: 2%;'>
      <div class='col-sm-5 myborder'>
      </div>
      <div id='feedback-tab' class='col-sm-2'>
        <h5>All feedback</h5>
      </div>
      <div class='col-sm-5 myborder'>
      </div>
    </div>
    <div class='row'>
      <div class='col-sm-6 offset-sm-1'>
        <strong>Feedback</strong>
      </div>
      <div class='col-sm-2'>
        <strong>From</strong>
      </div>
      <div class='col-sm-2'>
        <strong>Date</strong>
      </div>
      <div class='col-sm-1'>
      </div>
      <?php
      while($row = $result->fetch_assoc()){
        echo "
        <div class='col-sm-1 offset-sm-1'>
          <span class='stars'>{$row['review']}</span>
        </div>
        <div class='col-sm-5'>
          <p>{$row['feedback']}</p>
          <p>{$row['name']}</p>
        </div>
        <div class='col-sm-2'>
          <p>Buyer: {$row['username']}</p>
          <p>{$row['price']}
        </div>
        <div class='col-sm-2'>
          <p>{$row['created']}</p>
          <a href='item.php?item={$row['trade_id']}'>View Item</a>
        </div>
        <div class='col-sm-1'>
        </div>
        ";
      }
        ?>

    </div>

  </body>
  <script>
    $.fn.stars = function() {
      return $(this).each(function() {
          // Get the value
          var val = parseFloat($(this).html());
          // Make sure that the value is in 0 - 5 range, multiply to get width
          var size = Math.max(0, (Math.min(5, val))) * 16;
          // Create stars holder
          var $span = $('<span />').width(size);
          // Replace the numerical value with stars
          $(this).html($span);
      });
    }

    $(function() {
      $('span.stars').stars();
    });
  </script>

</html>
