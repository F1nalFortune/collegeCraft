<html>

<?php
	session_start();
	include '../connect.php';

  //GET REQUEST
  if(isset($_GET['outgoing'])){
    $outgoing = $_GET['outgoing'];
  }

	//FILL REQUESTS
  function fill_requests($conn){
    //GET USER ID
    $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
    $user_result = $conn->query($user_query);
    while($a = $user_result->fetch_assoc()){
      $user_id = $a['user_id'];
    }
    $output = '';
    $sql = "SELECT trade_request.id, trade_request.buyer,
		trade_request.request, trade_request.offer,
		trade_request.cash, trade_request.trade, trade_request.comment,
		trade_request.complete, users.username, trade_ad.price as price
		from trade_request
		INNER JOIN users on trade_request.buyer=users.user_id
		INNER JOIN trade_ad on trade_request.request = trade_ad.id
		where trade_request.seller = {$user_id}
		AND complete=0";
    $result = $conn->query($sql);

// TODO link user image with profile
    while($row = $result->fetch_assoc()){
			$view = $row['id'];
      if($row['cash']==0){
        $output .="<div class='row' style='border: 1px solid black'>
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
		if($output){
			return $output;
		} else {
			echo "0 results";
		}
  }
?>
<head>
  <?php include './partials/head.html' ?>
	<link rel="stylesheet" href="../public/stylesheets/starability-all.min.css">
	<link rel="stylesheet" type="text/css" href="../public/stylesheets/requests.css">
</head>
<body>
  <?php include './partials/header.php' ?>
  <h1>Requests</h1>
  <div class='container'>
    <div class='row'>
      <div class='col-sm-3'>
          <ul class='list-group'>
            <li class='list-group-item active'>Inbox</li>
            <li id='outgoing' class='list-group-item'>Outbox</li>
						<li class='list-group-item'>Sold</li>
						<li class='list-group-item'>Purchased</li>
						<li class='list-group-item'>Traded</li>
					</ul>
      </div>
      <div class='col-sm-9'>
        <div id="show_requests">
  				<?php
							echo fill_requests($conn);
					?>
  			</div>
      </div>
    </div>
  </div>

</body>
<script>
//FILTER ALL REQUESTS
  $('.list-group-item').click(function(){
    $(this).addClass('active').siblings().removeClass('active');
      var buyer = '';
      var seller = '';
      var sold = '';
			var traded = '';
			var purchased = '';
    if ($('.list-group-item.active').text()==="Outbox"){
      var buyer = parseInt(<?php echo $user_id ?>);
    } else if($('.list-group-item.active').text()==="Inbox"){
      var seller = parseInt(<?php echo $user_id ?>);
    } else if($('.list-group-item.active').text()==="Sold"){
			var sold = parseInt(<?php echo $user_id ?>);
		} else if($('.list-group-item.active').text()=="Traded"){
      var traded = parseInt(<?php echo $user_id ?>);
    } else if($('.list-group-item.active').text()=="Purchased"){
			var purchased = parseInt(<?php echo $user_id ?>);
		}else{
			console.log("error requests");
		}
    $.ajax({
      url:"../load_requests.php",
      method:"POST",
      data:{buyer:buyer, seller:seller, sold:sold, purchased:purchased, traded:traded},
      success:function(data){
        $('#show_requests').html(data);
      }
    })
  });

	//ACCEPT REQUEST
  $('.fa-check-circle').click(function(){
		var y = confirm("Press OK to confirm.");
		if (y == true){
			var id= $(this).attr("id");
			var parent = $(this).parent();
			$.ajax({
				url:"../accept_request.php",
				method:"POST",
				data:{id:id},
				success:function(data){

					$(parent).html("Successfully Confirmed");
				}
			})
		} else {
			console.log('Customer did not accept Request');
		}
  });


		// DELETE REQUEST
		$('.fa-times-circle').click(function(){
			var x = confirm("Press OK to delete.");
			if (x == true){
				var id= $(this).attr("id");
				var parent = $(this).parent();
				$.ajax({
					url:"../delete_request.php",
					method:"POST",
					data:{id:id},
					success:function(data){
						$(parent).html("Successfully Deleted");
					}
				})
			} else {
				console.log('Customer did not delete Request');
			}
		});
</script>

<?php
if(isset($_GET['outgoing'])){
  $outgoing = $_GET['outgoing'];
  echo "
  <script>
  if ({$outgoing}===true){
    document.getElementById('outgoing').click();
  }
  </script>
  ";

}
?>
</html>
