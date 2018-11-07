<html>
<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.html' ?>
  <?php 
	if(!isset($_GET['goToProductPage'])){
		$conn = @new mysqli('127.0.0.1', 'root', '');
		$conn->query('use collegeCraft');
		$result = $conn->query('select * from users');
		$rows = $result->num_rows;#test!!!
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
		#TODO

	}

  ?>
</body>
</html>
