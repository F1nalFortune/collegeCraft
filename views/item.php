<html>
  <head>
    <?php include './partials/head.html' ?>

  </head>
  <body>
<?php
  session_start();

  include '../requiredAuth.php';
  include '../connect.php';

  // GRAB ITEM ID FROM URL
  $item = $_GET['item'];

  //GET USER
  $seller = "SELECT user_id
            FROM sells
            WHERE product_id= {$item}";
  $seller_result = $conn->query($seller);
  while($data = $seller_result->fetch_assoc()){
    $seller_id = $data['user_id'];
  }

  // GRAB USER RATING
  $user_rating = "SELECT average_review from(select avg(review) as average_review,
  users.username, trade_ad.id, sells.user_id as seller
                  from review
                  INNER JOIN trade_ad ON review.trade_id=trade_ad.id
                  INNER JOIN sells on trade_ad.id=sells.product_id
                  INNER JOIN users ON sells.user_id=users.user_id
                  where sells.user_id={$seller_id}) as average";
  $user_rating_result = $conn->query($user_rating);
  while($data = $user_rating_result->fetch_assoc()){
    $review = $data['average_review'];
  }
  $sql = "SELECT Users.location, Users.username, Users.email_address,
  Users.user_id, Users.name as FirstName, Trade_ad.id as Trade_ID,
  Trade_ad.id, Trade_ad.price, Trade_ad.img, Product.name, Product.category
    FROM Users
    INNER JOIN sells on Users.user_id=sells.user_id
    INNER JOIN Trade_ad ON sells.product_id=trade_ad.id
    INNER JOIN Product ON Trade_ad.id=Product.product_id
    WHERE Trade_ad.id = {$item}";
  $result = $conn->query($sql);

  while($row = $result->fetch_assoc()){
    $location = $row['location'];
    $trade_id = $row['Trade_ID'];
    $price = $row['price'];
    $first = $row['FirstName'];
    $category = $row['category'];
    $username = $row['username'];
    $email = $row['email_address'];
    $name = $row['name'];
    $image = $row['img'];
    include './partials/header.php';
    //TODO add condition to trade_id parameter
    echo "
    <div id='sub-nav'>
      <a href='javascript:history.go(-1)'><-Back to previous page</a> | Listed in category:
    </div>
    ";
    echo "
  <div class='container'>
    <div class='row'>
      <div class='col-sm-3 card'>
        <img id='trade-pic' src='";
        if($image==null){
          echo "http://www.cupcakeboxes.co.nz/media/catalog/product/cache/8/image/9df78eab33525d08d6e5fb8d27136e95/s/a/sample_1.jpg'";
        } else {
          echo "{$image}'";
        }
echo " />
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
          </div>";






      $newSql = "SELECT * from trade_request
      where trade_request.request = {$item}
      and complete=1";
      $resultzor = $conn->query($newSql);
      if($resultzor->num_rows > 0){
        echo "
        <div class='row'>
          This Item has been sold!
        </div>
        ";
      } else {
        $response = "SELECT * from trade_request
        where trade_request.request = {$item}";
        $responseresult = $conn->query($response);
        while($rowz = $responseresult->fetch_assoc()){
          if ($rowz['trade']==1 && $rowz['buyer']==$user_id){
            echo "
            <div class='row'>
              Awaiting response from {$row['username']}
            </div>
            <script>
            $(document).ready(function(){
              document.getElementById('purchase').disabled=true;
              document.getElementById('trade').disabled=true;
            })

            </script>
            ";
          }
        }
        echo "
          <div class='row'>
            <button id='purchase'>Purchase</button>
            <button id='trade'>Trade</button>
          </div>";
      }

      echo "

        </div>
      </div>
      <div class='col-sm-3 card'>
        <h4>Seller Information</h4>
        <div>
          <p>{$row['username']}<a href='feedback.php?user={$row['user_id']}'><span class='stars'>{$review}</span></a></p>
        </div>

        <a href='#'>Contact</a><br/>
        <a href='/collegeCraft/views/profiles.php?goToProductPage={$row['username']}'>See other items</a>
      </div>
    </div>
    <div id='trade-form' class='card'>
        <div class='row'>
          <div class='col-sm-4'>
            Request From PICTURE
          </div>
          <div class='col-sm-4'>
          <label for='trade-offer'>Select Item:</label>
          <select class='form-control' id='trade-offer'>";
    //GET USER ID
    $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
    $user_result = $conn->query($user_query);
    while($row = $user_result->fetch_assoc()){
      $user_id = $row['user_id'];
    }

    //GET USER ITEMS
    $user_items = "SELECT Users.location, Trade_ad.id as Trade_ID,
    Trade_ad.price, Product.name, Product.category
      FROM Users
      INNER JOIN sells on users.user_id=sells.user_id
      INNER JOIN Trade_ad ON sells.product_id=Trade_ad.id
      INNER JOIN Product ON Trade_ad.id=Product.product_id
      WHERE users.user_id = {$user_id}";
    $user_items_result = $conn->query($user_items);
    while($row = $user_items_result->fetch_assoc()){
      echo "<option value='{$row['Trade_ID']}'>{$row['name']}</option>";

    }
      echo "
            </select>
            <label for ='comment'>Comment:</label>
            <textarea id='comment' class='form-control' placeholder='Leave Comment'></textarea>
          </div>
          <div class='col-sm-4'>
            <button type='button' id='submittrade' class='btn btn-primary btn-md'>Trade Now!</button>
          </div>
        </div>
    </div>
  </div>
    ";
  }
 ?>



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
      // var comment= $("#comment").val();
      // var offer = parseInt($("#trade-offer").val());
      var seller = parseInt(<?php echo $seller_id ?>);
      var buyer = parseInt(<?php echo $user_id ?>);
      var cash = 1;
      // var trade = 0;
  		$.ajax({
  			url:"./requestTrade.php",
  			method:"POST",
  			data:{
          request:request,
          // comment:comment,
          // offer:offer,
          seller:seller,
          buyer:buyer,
          cash:cash,
          // trade:trade
        },
  			success:function(data){
          alert("Your purchase has been made!");
  			}
  		});

    } else {

    }

  });


  	$('#submittrade').click(function(){
      var a = confirm("Are you sure?");
      if (a == true){
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
      } else {
        console.log('Customer did not want to trade');
      }
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
