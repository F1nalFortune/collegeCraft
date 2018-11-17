<?php
  session_start();

  include '../connect.php';

  // GRAB ITEM ID FROM URL
  $item = $_GET['item'];

  //GET USER
  $seller = "SELECT seller
          FROM Trade_ad
          WHERE trade_ad.id = {$item}";
  $seller_result = $conn->query($seller);
  while($data = $seller_result->fetch_assoc()){
    $seller_id = $data['seller'];
  }

  // GRAB USER RATING
  $user_rating = "SELECT average_review from(select avg(review) as average_review, users.username, trade_ad.id, trade_ad.seller
                  from review
                  INNER JOIN trade_ad ON review.trade_id=trade_ad.id
                  INNER JOIN users ON trade_ad.seller=users.user_id
                  where seller={$seller_id}) as average";
  $user_rating_result = $conn->query($user_rating);
  while($data = $user_rating_result->fetch_assoc()){
    $review = $data['average_review'];
  }
  $sql = "SELECT Users.location, Users.username, Users.email_address, Users.user_id, Users.name as FirstName, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
    FROM Users
    INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
    INNER JOIN Product ON Trade_ad.product_id=Product.product_id
    WHERE Trade_ad.id = {$item}";
  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    $location = $row['location'];
    $trade_id = $row['Trade_ID'];
    $product_id = $row['product_id'];
    $price = $row['price'];
    $first = $row['FirstName'];
    $category = $row['category'];
    $username = $row['username'];
    $email = $row['email_address'];
    $name = $row['name'];
    include './partials/header.php';
    echo "
    <div id='sub-nav'>
      <a href='javascript:history.go(-1)'><-Back to previous page</a> | Listed in category:
    </div>
    ";
    echo "
  <div class='container'>
    <div class='row'>
      <div class='col-sm-3 card'>
        <img id='trade-pic' src='http://www.cupcakeboxes.co.nz/media/catalog/product/cache/8/image/9df78eab33525d08d6e5fb8d27136e95/s/a/sample_1.jpg' />
      </div>
      <div class='col-sm-6'>
        <div>
          <h3>{$name}</h3>
          <hr/>
          <p>Condition: NEW</p>

          <div class='inline'>
            <p>Price: $</p>
            <input id='price' class='bordernone' value='{$price}' readonly/>
            <br/>
            <script>
              var num = {$price};
              var n = num.toFixed(2);
              document.getElementById('price').value = n;
            </script>
          </div>
          <div class='row'>
          <button id='purchase'>Purchase</button>
          <button id='trade'>Trade</button>
          </div>

        </div>
      </div>
      <div class='col-sm-3 card'>
        <h4>Seller Information</h4>
        <div>
          <p>{$username}<a href='feedback.php?user={$row['user_id']}'><span class='stars'>{$review}</span></a></p>
        </div>

        <a href='#'>Contact</a><br/>
        <a href='#'>See other items</a>
      </div>
    </div>
    <div id='trade-form' class='card'>
        <div class='row'>
          <div class='col-sm-4'>
            <p>Pick an Item</p>
              <select id='trade-offer'>";
    //GET USER ID
    $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
    $user_result = $conn->query($user_query);
    while($row = $user_result->fetch_assoc()){
      $user_id = $row['user_id'];
    }

    //GET USER ITEMS
    $user_items = "SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller
      INNER JOIN Product ON Trade_ad.product_id=Product.product_id
      WHERE users.user_id = {$user_id}";
    $user_items_result = $conn->query($user_items);
    while($row = $user_items_result->fetch_assoc()){
      echo "<option value='{$row['Trade_ID']}'>{$row['name']}</option>";

    }
      echo "
            </select>
          </div>
          <div class='col-sm-4'>
            <p>Comment</p>
            <textarea id='comment' placeholder='Leave Comment'></textarea>
          </div>
          <div class='col-sm-4'>
            <button id='submittrade'>Trade Now!</button>
          </div>
        </div>
    </div>
  </div>
    ";
  }
 ?>

<html>
  <head>
    <?php include './partials/head.html' ?>

  </head>
  <body>


  </body>
  <script>
  $("#trade-form").hide();
  $("#trade").click(function(){
    $("#trade-form").slideToggle("fast");
  });
  $("#purchase").click(function(){
    var r = confirm("Are you sure?");
    if (r == true) {
      document.getElementById('purchase').disabled = true;
      document.getElementById('trade').disabled = true;
      var request= parseInt(<?php echo $item ?>);
      var comment= $("#comment").val();
      var offer = parseInt($("#trade-offer").val());
      var price = parseInt($("#price").val());
      var seller = parseInt(<?php echo $seller_id ?>);
      var buyer = parseInt(<?php echo $user_id ?>);
      var cash = 1;
      var trade = 0;
  		$.ajax({
  			url:"./requestTrade.php",
  			method:"POST",
  			data:{
          request:request,
          comment:comment,
          offer:offer,
          price:price,
          seller:seller,
          buyer:buyer,
          cash:cash,
          trade:trade},
  			success:function(data){
          alert("Your purchase has been made!");
  			}
  		});

    } else {

    }

  });


  	$('#submittrade').click(function(){
      document.getElementById('purchase').disabled = true;
      document.getElementById('trade').disabled = true;
      var request= parseInt(<?php echo $item ?>);
      var comment= $("#comment").val();
      var offer = parseInt($("#trade-offer").val());
      var price = parseInt($("#price").val());
      var seller = parseInt(<?php echo $seller_id ?>);
      var buyer = parseInt(<?php echo $user_id ?>);
      var cash = 0;
      var trade = 1;
  		$.ajax({
  			url:"./requestTrade.php",
  			method:"POST",
  			data:{
          request:request,
          comment:comment,
          offer:offer,
          price:price,
          seller:seller,
          buyer:buyer,
          cash:cash,
          trade:trade},
  			success:function(data){
  				$('#trade-form').html("Thank you"
          );
  			}
  		});
  	});



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
