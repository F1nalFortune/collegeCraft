<!DOCTYPE html>
<html>
<?php
	session_start();
	// if(isset($_SESSION['loggedin'])){
	// 	echo "not logged in";
	// 	header("Location: index.php?notlogged='1'");
	// }
	if($_SESSION["loggedin"] != "1"){
		header("Location: index.php?notlogged='1'");
	}

	include '../connect.php';

	$conn->query("create table if not exists product(
		product_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
		description varchar(255) NOT NULL,
		price float,
		category varchar(64) NOT NULL,
		quantity int,
		condition varchar(64)
		)")

?>


<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.html' ?>
  <h1>Dashboard</h1>
	<h4><?php echo "Welcome ". $_SESSION["username"]. "!";?></h4>
	<?php
	echo "
<div class='container'>
	<div class='row'>
		<div class='col-sm-12' style='text-align: center'>
			<p> Search for Item</p>
			<input type='text' placeholder='search'/>
			<input type='submit' value='submit'>
		</div>

		<div class='col-sm-3'>
			<label for='university'> University </label>
			<select id='university'>
				<option value='SCSU'>SCSU</option>
				<option value='ECSU'>ECSU</option>
				<option value='UNH'>UNH</option>
				<option value='QUINNIPIAC'>QUINNIPIAC</option>
			</select>
			<ul class='list-group'>
			  <li class='list-group-item'>School</li>
			  <li class='list-group-item'>Dorm</li>
			  <li class='list-group-item'>Electronics</li>
			  <li class='list-group-item'>Books</li>
			  <li class='list-group-item'>ALL</li>
			</ul>
		</div>
		<div class='col-sm-9'>
			<div class='row'>";
		$allProducts = $conn->query("select * from product");
		if ($allProducts->num_rows > 0) {
		  while($row = $allProducts->fetch_assoc()){
				$product_id = $row['product_id'];
				$product_description =$row['description'];
				$product_price = $row['price'];
				$product_category = $row['category'];
				echo "
					<div class='col-sm-4' style='border: 1px solid black'>
						<p> {$row['product_id']} </p>
					</div>
				";
		  }
		}
		echo "
			</div>
		</div>
	</div>
	<nav aria-label='Page navigation example'>
	  <ul class='pagination'>
	    <li class='page-item'><a class='page-link' href='#'>Previous</a></li>
	    <li class='page-item'><a class='page-link' href='#'>1</a></li>
	    <li class='page-item'><a class='page-link' href='#'>2</a></li>
	    <li class='page-item'><a class='page-link' href='#'>3</a></li>
	    <li class='page-item'><a class='page-link' href='#'>Next</a></li>
	  </ul>
	</nav>
</div>
	";

	?>
</body>
<script>
for(i=0;i<document.getElementsByClassName('list-group-item').length;i++){
	document.getElementsByClassName('list-group-item')[i].onmouseover = function(){
		$(this).addClass('active');
	}
	document.getElementsByClassName('list-group-item')[i].onmouseout = function(){
		$(this).removeClass('active');
	}
}
</script>
</html>
