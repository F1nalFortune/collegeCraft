<html>
<?php
	session_start();
	include '../requiredAuth.php';
	include '../connect.php';

  //GET REQUEST
  if(isset($_GET['outgoing'])){
    $outgoing = $_GET['outgoing'];
  }
  function fill_requests($conn){
    //GET USER ID
    $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
    $user_result = $conn->query($user_query);
    while($a = $user_result->fetch_assoc()){
      $user_id = $a['user_id'];
    }
    $output = '';
    $sql = "SELECT * from trade_request where seller = {$user_id} AND complete=0";
    $result = $conn->query($sql);

    while($row = $result->fetch_assoc()){
      if($row['cash']==0){
        $output .="<div class='row' style='border: 1px solid black'>
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
                        <p>check</p>
                        <p>x</p>
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
                        <p>check</p>
                        <p>x</p>
                      </div>
                  </div>";

      }
    }

    return $output;
  }
?>
<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.php' ?>
  <h1>Requests</h1>
  <div class='container'>
    <div class='row'>
      <div class='col-sm-3'>
          <ul class='list-group'>
            <li class='list-group-item active'>Incoming Requests</li>
            <li id='outgoing' class='list-group-item'>Outgoing Requests</li>
            <li class='list-group-item'>Completed</li>
          </ul>
      </div>
      <div class='col-sm-9'>
        <div id="show_requests">
  				<?php echo fill_requests($conn); ?>
  			</div>
      </div>
    </div>
  </div>
    <?php
      $sql = "SELECT * from trade_request where seller = {$user_id} AND complete=0";
      $result = $conn->query($sql);
      while($row = $result->fetch_assoc()){

      }
    ?>



</body>
<script>

  $('.list-group-item').click(function(){
    $(this).addClass('active').siblings().removeClass('active');
      var buyer = '';
      var seller = '';
      var complete = '';
    if ($('.list-group-item.active').text()==="Outgoing Requests"){
      var buyer = parseInt(<?php echo $user_id ?>);
    } else if($('.list-group-item.active').text()==="Incoming Requests"){
      var seller = parseInt(<?php echo $user_id ?>);
    } else {
      var complete = parseInt(<?php echo $user_id ?>);
    }
    $.ajax({
      url:"../load_requests.php",
      method:"POST",
      data:{buyer:buyer, seller:seller, complete:complete},
      success:function(data){
        $('#show_requests').html(data);
      }
    })
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
