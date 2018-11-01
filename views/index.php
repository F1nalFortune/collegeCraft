<?php
  include './partials/header.html';
 ?>

<?php 

session_start();

?>

<?php

if($_SERVER['REQUEST_METHOD'] === 'POST'){

        $_SESSION["usr"] = $_POST['username'];
        $_SESSION["pwd"] = $_POST['password'];
        $pass = crypt($_SESSION["pwd"],'$1$salt012345'); #cmp with stored
        $user = $_SESSION["usr"];
        $conn = @new mysqli('127.0.0.1', 'root', '');
	$conn->query("create database if not exists collegeCraft");
	$conn->query("use collegeCraft");
	$conn->query("create table if not exists users (username varchar(32), hashed_password varchar(255),  primary key(username) )");
        $sql = "select hashed_password from users where username='" . $user . "';";
        $result = $conn->query($sql);
        if ( $result->num_rows === 0 ){
                echo "No Login Available";
                header("Location: registration.php");
        }
        $_SESSION["result"] = $result;
        $row = $result->fetch_row();
        echo $row[0];
        echo "1000000";
	if($row[0] === $pass){
                echo "success";
                $_SESSION["loggedin"] = "1";
                header("Location: dashboard.php");
        }else{
                echo "bad password";
		$_SESSION["badFlag"]=1;
                header("Location: index.php?badpwd='1'");
                echo "bad password";
        }


}else{

session_unset();
session_destroy();

}

?>



<html>
  <head>
    <title> Welcome to the College Craft </title>
    <?php include './partials/head.html' ?>
  </head>
  <body>
    <div style="">
    <form action="index.php" method="POST" style="position:relative;left:20px;">
<?php
  if($_GET){
    if(isset($_GET['badpwd'])){
      echo "<h6 color:red> BAD USER/PASS </h6>";
    }
    if(isset($_GET['notlogged'])){
      echo "Must be logged in to use dashboard";
    }
  }
?>
    <p>Log in here:
    <br>
    <span>Username: <input type="Text" name="username"/> </span>
    <br>
    <span>Password: <input type="password" name="password"/> </span>
    </p>
    <input type="Submit" value = "Submit"/>
    <br>
    <p>Not registered? Register <a href="registration.php"> here </a> </p>

    </form>
    </div>



  </body>
</html>
