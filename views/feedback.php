<?php

  session_start();

  include '../requiredAuth.php';
  include '../connect.php';

  // GRAB USER ID FROM URL
  $user = $_GET['user'];
  //GET USERNAME
  $get_info = "SELECT username from users where user_id={$user}";
  $resultz = $conn->query($get_info);
  while($a = $resultz->fetch_assoc()){
    $feedback_user = $a['username'];
  }

  // GRAB USER FEEDBACK INFO
  $info = "SELECT review.id, review.review, review.trade_id,
    review.feedback, review.created, buys.user_id as buyer, advertises.product_id,
    trade_ad.price, trade_ad.qty, sells.user_id as seller, product.name, users.username
  FROM review
  INNER JOIN Trade_ad ON review.trade_id=Trade_ad.id
  INNER JOIN sells on trade_ad.id=sells.product_id
  INNER JOIN product ON trade_ad.id=product.product_id
  INNER JOIN users ON users.user_id=sells.user_id
  INNER JOIN buys on trade_ad.id=buys.product_id
  INNER JOIN advertises on trade_ad.id = advertises.trade_ad_id
  WHERE sells.user_id = {$user}";
  $result = $conn->query($info);


  // GRAB USER RATING
  $user_rating = "SELECT average_review from(select avg(review) as average_review,
    users.username, trade_ad.id, sells.user_id as seller
                  from review
                  INNER JOIN trade_ad ON review.trade_id=trade_ad.id
                  INNER JOIN sells ON trade_ad.id=sells.product_id
                  INNER JOIN users ON sells.user_id=users.user_id
                  where sells.user_id={$user}) as average";
  $user_rating_result = $conn->query($user_rating);
  while($b = $user_rating_result->fetch_assoc()){
    $review = $b['average_review'];
  }


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
      <div class='row'>
        <div class='col-sm-12'>
          <h3>Feedback</h3>
        </div>
        <div class='container'>
          <div class='row'>
            <div class='col-sm-8'>
              <div class='card'>
                <?php
                echo $feedback_user;
                echo "
                <span class='stars'>{$review}</span>
                ";
                ?>
              </div>
            </div>
            <div class='col-sm-4'>
              <div class='card'>
                <a href='#'>Contact</a>
                <a href='#'>View Profile</a>
                <a href='#'>View Items</a>
              </div>
            </div>
          </div>
        </div>
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
      <div class='col-sm-12'>
        <p style='float: right;padding-right: 5%;'>Sort By
          <select name='sort' id='sort'>
            <option value="recent">Recent</option>
            <option value="oldest">Oldest</option>
            <option value="best">Best Review</option>
            <!-- <option value="worst">Worst Review</option> -->
          </select>
        </p>
      </div>
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
      <div id='show_sort' class='row' style='width:100%;'>
      <?php
      while($row = $result->fetch_assoc()){
          // GET BUYERS USERNAME
        $buyer = $conn->query("SELECT username from users where user_id={$row['buyer']}");
        echo "
        <div class='col-sm-1 offset-sm-1'>
          <span class='stars'>{$row['review']}</span>
        </div>
        <div class='col-sm-5'>
          <p>{$row['feedback']}</p>
          <p>{$row['name']}</p>
        </div>
        <div class='col-sm-2'>
          <p>Buyer: ";
          while($data = $buyer->fetch_assoc()){
            echo $data['username'];
          }
        echo "</p>
          <p>$ {$row['price']}
        </div>
        <div class='col-sm-2'>
          <p>{$row['created']}</p>
          <a href='item.php?item={$row['trade_id']}'>View Item</a>
        </div>
        <div class='col-sm-1'>
        </div>
        ";
      }
      if ( $result->num_rows < 2 ){
        echo "
          <script>document.getElementById('sort').disabled = true;</script>
        ";
      }
      if ( $result->num_rows == 0 ){
        echo "
        <div class='col-sm-12' style='text-align: center'>
          No Reviews.
        </div>";
      }
        ?>
      </div>
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


    $('#sort').change(function(){
      var sort = $(this).val();
      var user = <?php echo $user; ?>;
      $.ajax({
        url:"../sort_feedback.php",
        method:"POST",
        data:{sort:sort, user:user},
        success:function(data){
          $('#show_sort').html(data);
        }
      })
    });


  </script>

</html>
