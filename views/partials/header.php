<?php

include '../connect.php';

//GET USER ID
if(isset($_SESSION['loggedin'])){
  $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
  $user_result = $conn->query($user_query);
  while($row = $user_result->fetch_assoc()){
    $user_id = $row['user_id'];
  }

//TODO fix requests so that only shows uncompleted
  $requests = "SELECT count(*) from trade_request where seller = {$user_id}";
  $requests_result = $conn->query($requests);
  while($row = $requests_result->fetch_assoc()){
    $count = $row['count(*)'];
  }

}


?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/collegeCraft/views/index.php">collegeCraft</a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/contact.php">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/dashboard.php">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/about.php">About</a>
      </li>
    </ul>
  </div>
  <ul style='float:right; list-style:none;' class='dots row'>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class='fas fa-user-tie' style=''>
            <?php
              if(isset($_SESSION['loggedin'])){
                echo $count;
              }
            ?>
          </span>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Incoming Requests</a>
          <a class="dropdown-item" href="#">Outgoing Requests</a>
        </div>
      </li>
    <?php
    if(session_status() == PHP_SESSION_ACTIVE){
      if($_SESSION['loggedin'] == '1'){

        echo "
        <li class='nav-item' style=''>
        <a class='nav-link' href='/collegeCraft/views/index.php'>Logout</a>
        </li>
        ";
      }

    } else {
      echo "<li class='nav-item' style=''>
      <a class='nav-link' href='/collegeCraft/views/index.php'>Login</a>
      </li>";
    }
    ?>

  </ul>
</nav>
