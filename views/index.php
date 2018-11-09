<?php
  include './partials/header.php';
  session_start();

?>

<?php

if($_SERVER['REQUEST_METHOD'] === 'POST'){

        $_SESSION["username"] = $_POST['username'];
        $_SESSION["password"] = $_POST['password'];
        $pass = crypt($_SESSION["password"],'$1$salt012345'); #cmp with stored
        $user = $_SESSION["username"];
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
                header("Location: index.php?badpassword='1'");
                echo "bad password";
        }


}else{

session_unset();
session_destroy();

}

?>



  <head>
    <title> Welcome to the College Craft </title>
    <?php include './partials/head.html' ?>
  </head>
  <body>

      <div class='auth_form'>
        <div class='row' style='text-align: center; background: white;'>
          <p id='login' class='col-sm-3 offset-sm-3'>Log in</p>
          <p id='register' class='col-sm-3'>Sign Up</p>
        </div>
        <form id='auth_form' action="index.php" method="POST" style='text-align: center;'>
          <?php
            if($_GET){
              if(isset($_GET['badpassword'])){
                echo "<h6 color:red> BAD USER/PASS </h6>";
              }
            }
          ?>
        <br>
        <div class='row'>
          <span class='col-sm-12'>Username: <br/><input type="Text" name="username"/> </span>
        </div>
        <div class='row'>
          <span class='col-sm-12'>Password: <br/><input type="password" name="password"/> </span>
        </div>
        <input type="Submit" value = "Submit"/>

        </form>
      </div>



  </body>
  <script>
      //Switch login / registration form
    $("#login").click(function() {
      $("#auth_form").attr("action", "index.php");
      document.getElementById('login').style.background=' #80808024';
      document.getElementById('register').style.background='white';
    });

    $("#register").click(function() {
      $("#auth_form").attr("action", "registration.php");
      document.getElementById('login').style.background='white';
      document.getElementById('register').style.background=' #80808024';
    });
  </script>
</html>
