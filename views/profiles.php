<html>
<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.html' ?>
  <?php 
	$conn = @new mysqli('127.0.0.1', 'root', '');
	$conn->query('use collegeCraft');
	if(!isset($_GET['goToProductPage'])){
		$result = $conn->query('select * from users');
		$rows = $result->num_rows;
		$columns = 4;
		echo "<table cellpadding='30'>";
		echo "<tr>";
		for($i=0;$i<$rows;$i++){
			$row = $result->fetch_assoc();
			echo 
			"<td>
				<table>
					<tr><td><center>$row[username]</center></td></tr>
					<tr><td><a href='?goToProductPage=$row[username]'><img height='240' width='240' src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGM7YsfwQqRPFX3xk8b432qGGLspkrMF59KOlZC4iGLWvFQ6xaPA'></a></td></tr>
					<tr><td><center>$row[bio]</center></td></tr>
					<tr><td><center><a href=''>$row[email_address]</a></center></td></tr>
				</table>
			</td>";
			if($i%$columns==($columns-1)){
				echo "</tr><tr>";
			}
		}
		echo "</tr>";
		echo "</table>";
	}else{
		echo "Welcome to User:  $_GET[goToProductPage]'s Products";
		$result = $conn->query('select * from users natural join sells, product where users.user_id=1 and sells.product_id=product.product_id');
		$rows = $result->num_rows;
		$columns = 4;
		if($rows===0){
			echo "<p> this user does not have any products yet </p>";

		}
		echo "<table cellpadding='30'>";
		echo "<tr>";
		for($i=0;$i<$rows;$i++){
			$row = $result->fetch_assoc();
			echo 
			"<td>
				<table>
					<tr><td><center>$row[name]</center></td></tr>
					<tr><td><a href='?goToPurchasePage=$row[product_id]'><img height='240' width='240' src='https://media.playstation.com/is/image/SCEA/playstation-4-slim-vertical-product-shot-01-us-07sep16?\$native_t\$'></a></td></tr>
					<tr><td><center>$row[description]</center></td></tr>
				</table>
			</td>";
			if($i%$columns==($columns-1)){
				echo "</tr><tr>";
			}
		}
		echo "</tr>";
		echo "</table>";

	}

  ?>
</body>
</html>