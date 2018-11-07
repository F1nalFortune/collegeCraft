<html>

<?php

if($_SERVER['REQUEST_METHOD'] === 'POST'){

	$servername = "localhost";
	$username = "root";
	$password = "";
	$conn = @new mysqli($servername, $username, $password);
	$conn->query("create database if not exists collegeCraft");
	$conn->query("use collegeCraft");
	$conn->query("create table if not exists users (username varchar(32), hashed_password varchar(255),  primary key(username) )");
	$userToAdd = $_POST['usr'];
	$pwdToAdd = $_POST['pwd'];
	$hashedPass = crypt($pwdToAdd,'$1$salt012345');
	$sql = "INSERT INTO users (username, hashed_password) VALUES ('$userToAdd', '$hashedPass' );";
	#insert into permanant database
	if($conn->query($sql) === TRUE){
		echo "successfully added";
		header("Location: index.php");
	}else{
		echo "error $conn->error()";
	}
	#$sql = "INSERT INTO users(username, password) VALUES ($_POST["usr"], crypt($_SESSION["pwd"],"$1$salt012345") );";	
	}

?>

<head>

<title> Registration Page </title>

</head>

<body>

<div style="position:relative;left:200px;top:200px;border:solid;width:300px;">

<form action="registration.php" method="POST" style="position:relative;left:20px;">
	<p>Register Here:
	<br>
	<br />
	<span>Username <input type="Text" name="usr"/> </span> 
	<br>
	<br />
	<span>Password <input type="password" name="pwd"/> </span>
	</p>
	<input type="Submit" value = "Register"/>
	<br />
</form>

</div>

</body>

</html>
