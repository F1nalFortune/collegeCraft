<?php
// $myfile = fopen("../sqlFiles/seededDatabase.sql", "r") or die("Unable to open file!");
// $stmts = fread($myfile,filesize("../sqlFiles/seededDatabase.sql"));
// fclose($myfile);
// // $conn = @new mysqli('127.0.0.1', 'root', '', 'collegeCraft');
// if ($conn->multi_query($stmts) === TRUE) {
// } else {
//     echo "Error: " . $sql . "<br>" . $conn->error;
// }

  include './partials/header.php';
  session_start();
  // shell_exec('chmod 777 ../sqlFiles/seededDatabase.sql');



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
        $sql = $conn->prepare("select hashed_password from users where username=?;");
        $sql->bind_param("s", $user);
        $sql->execute();

        $result = $sql->get_result();

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
      <?php include './partials/head.html'; ?>
  </head>
  <body>
    <div class="parallax"></div>
      <div class='col-sm-12'>
        <h1 style='text-align: center;'>College Craft!</h1>
      </div>
    <div class='row stats' style='text-align: center;'>
      <div class='col-xs-12 col-sm-2 offset-sm-3'>
        <h1>100+</h1>
        <h3>schools</h3>
      </div>
      <div class='col-xs-12 col-sm-2'>
        <h1>500+</h1>
        <h3>users</h3>
      </div>
      <div class='col-xs-12 col-sm-2'>
        <h1>1000+</h1>
        <h3>items</h3>
      </div>
    </div>

  </body>
  <script>
    document.getElementById('navigation-main').style.marginBottom = '0px';
  </script>

</html>
