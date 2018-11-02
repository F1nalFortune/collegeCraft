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
?>


<head>
  <?php include './partials/head.html' ?>
</head>
<body>
  <?php include './partials/header.html' ?>
  <h1>Dashboard</h1>
	<h4><?php echo "Welcome ". $_SESSION["username"]. "!";?></h4>
  <p>
    Lorem Khaled Ipsum is a major key to success. Celebrate success right, the only way, apple. I’m up to something. The key to more success is to get a massage once a week, very important, major key, cloth talk. Lion! Learning is cool, but knowing is better, and I know the key to success. It’s on you how you want to live your life. Everyone has a choice. I pick my choice, squeaky clean. A major key, never panic. Don’t panic, when it gets crazy and rough, don’t panic, stay calm. Let me be clear, you have to make it through the jungle to make it to paradise, that’s the key, Lion!

    Celebrate success right, the only way, apple. Surround yourself with angels. Special cloth alert. The first of the month is coming, we have to get money, we have no choice. It cost money to eat and they don’t want you to eat. Congratulations, you played yourself. Major key, don’t fall for the trap, stay focused. It’s the ones closest to you that want to see you fail. Mogul talk. Find peace, life is like a water fall, you’ve gotta flow. We the best. The key is to drink coconut, fresh coconut, trust me. The weather is amazing, walk with me through the pathway of more success. Take this journey with me, Lion!
  </p>
</body>
</html>
