<html>

<?php
require('helpers.php');
if($_SERVER['REQUEST_METHOD'] === 'POST'){

	$servername = "localhost";
	$username = "root";
	$password = "";
	$conn = @new mysqli($servername, $username, $password);
	$conn->query("use collegeCraft");
	$conn->query("create table if not exists users (username varchar(32), hashed_password varchar(255),  primary key(username) )");
	$userToAdd = $_POST['username'];
	$passwordToAdd = $_POST['password'];
	$hashedPass = crypt($passwordToAdd,'$1$salt012345');
	$sql = $conn->prepare("INSERT INTO users (username, hashed_password) VALUES (?,?);");

	$sql->bind_param("ss", $userToAdd, $hashedPass);
	$sql->execute();

	$result = $sql->get_result();


	// addUser($userToAdd,$hashedPass);

	if ($sql->affected_rows === 0){
		echo "error";
	} else {
		echo "successfully added";
		header("Location: index.php?dontreload=1");

	}

	#$sql = "INSERT INTO users(username, password) VALUES ($_POST["username"], crypt($_SESSION["password"],"$1$salt012345") );";
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
	<span>Username <input type="Text" name="username"/> </span>
	<br>
	<br />
	<span>Password <input type="password" name="password"/> </span>
	</p>
	<input type="Submit" value = "Register"/>
	<br />
</form>

</div>

</body>

</html>
