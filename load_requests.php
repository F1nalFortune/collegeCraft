<?php

include 'connect.php';
$output = '';
$buyer = $_POST['buyer'];
$seller = $_POST['seller'];
$sold = $_POST['sold'];
$purchased = $_POST['purchased'];
$traded  = $_POST['traded'];
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
//FIX SELLER STATEMENT
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
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p>Offering item # {$row['offer']}</p>
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
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-1'>
            FOR
          </div>
          <div class='col-sm-3'>
            <p>$ {$row['price']}</p>
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
  } else {
    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p>Offering item # {$row['offer']}</p>
          </div>
          <div class='col-sm-1'>
          </div>
        </div>";
      } else {
        $output .="
        <div class='row' style='border: 1px solid black'>
          <div class='col-sm-4 offset-sm-1'>
            <p>Requesting item # {$row['request']}</p>
          </div>
          <div class='col-sm-2'>
            FOR
          </div>
          <div class='col-sm-4'>
            <p>$ {$row['price']}</p>
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
