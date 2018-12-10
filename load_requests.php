<?php

include 'connect.php';
$output = '';
$buyer = $_POST['buyer'];
$seller = $_POST['seller'];
$sold = $_POST['sold'];
$purchased = $_POST['purchased'];
$traded  = $_POST['traded'];

$user_id = '';
$user_id .= $_POST['buyer'];
$user_id .= $_POST['seller'];
$user_id .= $_POST['sold'];
$user_id .= $_POST['purchased'];
$user_id  .= $_POST['traded'];
if(isset($buyer)){
  if($buyer != ''){
    $sql = "SELECT trade_request.id, trade_request.seller, trade_request.buyer,
    trade_request.request, trade_request.offer, trade_ad.price as price,
    trade_request.cash, trade_request.trade, trade_request.comment,
    trade_request.complete, users.username
            from trade_request
            INNER JOIN users on trade_request.buyer=users.user_id
            INNER JOIN trade_ad on trade_request.request = trade_ad.id
            WHERE buyer = {$buyer} and complete=0";

  } else if($seller != ''){
    $sql = "SELECT trade_request.id, trade_request.buyer,
		trade_request.request, trade_request.offer,
		trade_request.cash, trade_request.trade, trade_request.comment,
		trade_request.complete, users.username, trade_ad.price as price
		from trade_request
		INNER JOIN users on trade_request.buyer=users.user_id
		INNER JOIN trade_ad on trade_request.request = trade_ad.id
		where trade_request.seller = {$seller}
		AND complete=0";
  } else if($sold != ''){
    $sql = "SELECT trade_request.id, trade_request.buyer,
    trade_request.request, trade_request.offer,
    trade_request.cash, trade_request.trade, trade_request.comment,
    trade_request.complete, users.username, trade_ad.price as price
    from trade_request
    INNER JOIN users on trade_request.buyer=users.user_id
    INNER JOIN trade_ad on trade_request.request = trade_ad.id
    where trade_request.seller = {$sold}
    AND complete=1
    AND cash=1";
  } else if($purchased){
    $sql = "SELECT trade_request.id, trade_request.buyer,
    trade_request.request, trade_request.offer,
    trade_request.cash, trade_request.trade, trade_request.comment,
    trade_request.complete, users.username, trade_ad.price as price
    from trade_request
    INNER JOIN users on trade_request.buyer=users.user_id
    INNER JOIN trade_ad on trade_request.request = trade_ad.id
    where trade_request.buyer = {$purchased}
    AND complete=1
    AND cash=1";
  } else if($traded){
    $sql = "SELECT trade_request.id, trade_request.buyer,
    trade_request.request, trade_request.offer,
    trade_request.cash, trade_request.trade, trade_request.comment,
    trade_request.complete, users.username, trade_ad.price as price
    from trade_request
    INNER JOIN users on trade_request.buyer=users.user_id
    INNER JOIN trade_ad on trade_request.request = trade_ad.id
    where {$traded} IN (trade_request.buyer, trade_request.seller)
    AND complete=1
    AND trade=1";
  } else {
    console.log('error in requests');
  }

//TODO link image picture with user profile
  $result = $conn->query($sql);
  if($seller !=''){
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-3'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1 center'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p class='center'>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-5'>
            <div>
              <i id='{$row['id']}' class='far fa-check-circle fa-2x'></i>
              <i id='{$row['id']}' class='far fa-times-circle fa-2x'></i>
            </div>
          </div>
          <div class='col-sm-2'>
            <a href='#'><img style='width:100%;padding-bottom: 5%;' src='https://avatarfiles.alphacoders.com/495/49573.jpg'/></a>
          </div>
          <div class='col-sm-7'>
            <h6>{$row['username']} is requesting...</h6>
            <p>{$row['comment']}</p>
          </div>
          <div class='col-sm-3'>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-3'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1 center'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p class='center'>$ {$row['price']}</p>
          </div>
          <div class='col-sm-5'>
            <div>
              <i id='{$row['id']}' class='far fa-check-circle fa-2x'></i>
              <i id='{$row['id']}' class='far fa-times-circle fa-2x'></i>
            </div>
          </div>
          <div class='col-sm-2'>
            <a href='#'><img style='width:100%;padding-bottom: 5%;' src='https://avatarfiles.alphacoders.com/495/49573.jpg'/></a>
          </div>
          <div class='col-sm-7'>
            <h6>{$row['username']} is requesting...</h6>
            <p>{$row['comment']}</p>
          </div>
          <div class='col-sm-3'>
          </div>
        </div>";
      }
    }

    //ECHO CONFIRMATION
    echo "
    <script>
      $('.fa-check-circle').click(function(){
    		var y = confirm('Press OK to confirm.');
    		if (y == true){
    			var id= $(this).attr('id');
    			var parent = $(this).parent();
    			$.ajax({
    				url:'../accept_request.php',
    				method:'POST',
    				data:{id:id},
    				success:function(data){

    					$(parent).html('Successfully Confirmed');
    				}
    			})
    		} else {
    			console.log('Customer did not accept Request');
    		}
      });";

      // ECHO DELETE REQUEST
      echo "
    		$('.fa-times-circle').click(function(){
    			var x = confirm('Press OK to delete.');
    			if (x == true){
    				var id= $(this).attr('id');
    				var parent = $(this).parent();
    				$.ajax({
    					url:'../delete_request.php',
    					method:'POST',
    					data:{id:id},
    					success:function(data){
    						$(parent).html('Successfully Deleted');
    					}
    				})
    			} else {
    				console.log('Customer did not delete Request');
    			}
    		});
      </script>";
  } else if($purchased != ''){
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2 center'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p class='center'>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2 center'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p class='center'>$ {$row['price']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
          <div id='insertRequestForm{$row['request']}' style='width:100%;'>
            <button id='{$row['request']}' class='requestbutton'>Leave Review</button>
          </div>
        </div>";

      }
    }
  }else {
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2 center'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p class='center'>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p class='center'>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2 center'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p class='center'>$ {$row['price']}</p>
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
 <script>
 $('.submit-feedback').click(function(){

   var newdate = new Date();
   var year = newdate.getFullYear();
   var month = newdate.getMonth() + 1;
   var day = newdate.getDate();

   var date = year + '-' + month + '-' + day;
   var review = this.parentElement.children[1].value;
   var feedback = this.parentElement.children[3].value;
   var item = this.parentElement.children[4].value;
   $.ajax({
     url:"../submit_review.php",
     method:"POST",
     data:{date:date, review:review, feedback:feedback, item:item},
     success:function(data){
       // console.log('successfully submited feedback')
       $('#review-form').html("Your review has been submitted.");
     }
   })
 });
 $('.requestbutton').click(function(){
  var trade_id= this.id;
   $.ajax({
     url:"../load_requestform.php",
     method:"POST",
     data:{trade_id:trade_id},
     success:function(data){
       console.log('test');
       $('#insertRequestForm'+trade_id+'').html(data);
     }
   })
 });

 </script>
