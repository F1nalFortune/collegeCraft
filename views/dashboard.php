<html>
<?php
	session_start();

	include '../connect.php';
	$output = '';
	function fill_university($conn){
		$tableJoin = "SELECT DISTINCT location FROM (
			SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name
									FROM Users
									INNER JOIN Trade_ad
									ON Users.user_id=Trade_ad.seller
									INNER JOIN Product
									ON Trade_ad.product_id=Product.product_id) as Full_Table";
		$joinResult = $conn->query($tableJoin);

			while($row = $joinResult->fetch_assoc()){
				$output .= "<option value='{$row["location"]}'>{$row["location"]}</option>";
			}
			return $output;
	}

	function fill_ad($conn){
		$output = '';
		$sql = "SELECT * FROM ( SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name FROM Users INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller INNER JOIN Product ON Trade_ad.product_id=Product.product_id ) as Full_Ad";
		$result = $conn->query($sql);

		while($row = $result->fetch_assoc()){
			$output .="<div class='col-sm-4' style='border: 1px solid black'>
	                  <div><a href='item.php?item={$row['Trade_ID']}'>{$row['name']}</a></div>
	              </div>";
		}

		return $output;
	}

	if (isset($_GET['pageno'])) {
			$pageno = $_GET['pageno'];
	} else {
			$pageno = 1;
	}

	$no_of_records_per_page = 12;
	$offset = ($pageno-1) * $no_of_records_per_page;

	include '../connect.php';

	$total_pages_sql = "SELECT COUNT(*) FROM trade_ad";
	$result = mysqli_query($conn,$total_pages_sql);
	$total_rows = mysqli_fetch_array($result)[0];
	$total_pages = ceil($total_rows / $no_of_records_per_page);

	$sql = "SELECT * FROM ( SELECT Users.location, Trade_ad.id as Trade_ID, Trade_ad.product_id, Trade_ad.price, Product.name FROM Users INNER JOIN Trade_ad ON Users.user_id=Trade_ad.seller INNER JOIN Product ON Trade_ad.product_id=Product.product_id ) as Full_Ad LIMIT $offset, $no_of_records_per_page";
	$res_data = mysqli_query($conn,$sql);
	while($row = mysqli_fetch_array($res_data)){
			$output .= "<div class='col-sm-4' style='border: 1px solid black'>
	                  <div><a href='item.php?item={$row['Trade_ID']}'>{$row['name']}</a></div>
	              </div>";
	}



//
	// $conn->query("create table if not exists product(
	// 	product_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	// 	description varchar(255) NOT NULL,
	// 	price float,
	// 	category varchar(64) NOT NULL,
	// 	quantity int,
	// 	condition varchar(64)
	// 	)")

?>


<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.php' ?>
  <h1>Dashboard</h1>
	<h4><?php echo "Welcome ". $_SESSION["username"]. "!";?></h4>
<div class='container'>
	<div class='row'>
		<div class='col-sm-12' style='text-align: center'>
			<p> Search for Item</p>
			<input id='search' type='text' placeholder='search'/>
			<input type='submit' value='submit'>
		</div>

		<div class='col-sm-3'>
			<label for='university'> University </label>
			<select name='university' id='university'>
				<option value="">Show All University</option>
				<?php echo fill_university($conn); ?>
			</select>
			<ul class='list-group'>
			  <li class='list-group-item'>School</li>
			  <li class='list-group-item'>Dorm</li>
			  <li class='list-group-item'>Electronics</li>
			  <li class='list-group-item'>Books</li>
			  <li class='list-group-item active'>ALL</li>
			</ul>
		</div>
		<div class='col-sm-9'>
			<div class='row' id="show_ad">
				<?php
					echo fill_ad($conn);
					// echo $output;
				?>
			</div>
			<nav>
				<ul class='pagination justify-content-center' style='padding-top: 5%;'>
						<li><a href='?pageno=1'><i class="fa fa-fast-backward" aria-hidden="true"></i></a></li>
						<li class='<?php if($pageno <= 1){ echo 'disabled'; } ?> page-item'>
								<a href='<?php if($pageno <= 1){ echo '#'; } else { echo '?pageno='.($pageno - 1); } ?>'>
									<i class="fas fa-caret-left  fa-2x" style='padding-right: 15px;padding-left: 15px;'></i>
								</a>
						</li>
						<li class='<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>'>
								<a href='<?php if($pageno >= $total_pages){ echo '#'; } else { echo '?pageno='.($pageno + 1); } ?> '>
									<i class="fas fa-caret-right fa-2x" style='padding-right: 15px;padding-left: 15px;'></i>
								</a>
						</li>
						<li><a href='?pageno=<?php echo $total_pages; ?>'><i class="fa fa-fast-forward" aria-hidden="true"></i></a></li>
				</ul>
			</nav>
		</div>
	</div>

<!--
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Previous">

	      </a>
	    </li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item">
	      <a class="page-link" href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	        <span class="sr-only">Next</span>
	      </a>
	    </li>
	  </ul>
	</nav> -->
</div>


</body>
<script>
$(document).ready(function(){
	$('#university').change(function(){
		var location = $(this).val();
		var category = $('.list-group-item.active').text();
		$.ajax({
			url:"../load_data.php",
			method:"POST",
			data:{location:location, category:category},
			success:function(data){
				$('#show_ad').html(data);
			}
		})
	});
	$('.list-group-item').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		var location = $("#university").val();
		var category = $(this).text();
		$.ajax({
			url:"../load_data.php",
			method:"POST",
			data:{location:location, category:category},
			success:function(data){
				$('#show_ad').html(data);
			}
		})
	});


	$('#search').change(function(){
		var search = $("#search").val();
		console.log(search);
		$.ajax({
			url:"../search_data.php",
			method:"POST",
			data:{search:search},
			success:function(data){
				$('#show_ad').html(data);
			}
		})
	});
})
</script>
</html>
