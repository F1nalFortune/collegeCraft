<?php

include '../connect.php';

//GET USER ID
if(isset($_SESSION['loggedin'])){
  $user_query = "SELECT user_id from users where username = '{$_SESSION['username']}'";
  $user_result = $conn->query($user_query);
  while($a = $user_result->fetch_assoc()){
    $user_id = $a['user_id'];
  }

  $requests = "SELECT count(*) from trade_request where seller = {$user_id} and complete=0";
  $requests_result = $conn->query($requests);
  while($b = $requests_result->fetch_assoc()){
    $count = $b['count(*)'];
  }

}


?>

<nav id='navigation-main' class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/collegeCraft/views/index.php">
    <h4>collegeCraft</h4>
  </a>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/contact.php">Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/dashboard.php">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/profiles.php">Profiles</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/collegeCraft/views/about.php">About</a>
      </li>
    </ul>
  </div>
  <?php
    if(isset($_SESSION['loggedin'])){
      echo"
      <ul style='float:right; list-style:none;' class='dots row'>
          <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdown' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
              <span class='fas fa-user-tie' style=''>
                    {$count}
              </span>
            </a>
            <div class='dropdown-menu' aria-labelledby='navbarDropdown' style='left: auto;right: 0 !important;padding-top: 0;'>
              <a class='dropdown-item' href='/collegeCraft/views/requests.php'>Incoming Requests</a>
              <a class='dropdown-item' href='/collegeCraft/views/requests.php?outgoing=true'>Outgoing Requests</a>
            </div>
          </li>
          <li class='nav-item' style=''>
            <a class='nav-link' href='/collegeCraft/views/index.php'>Logout</a>
          </li>
      </ul>";
        } else {
          echo "
      <ul style='float:right; list-style:none;'>
        <li class='dropdown'>
          <a class='dropdown-toggle nav-link' data-toggle='dropdown' href='#'>Login</a>

          <form id='auth_form' action='index.php' method='POST' class='dropdown-menu form-login stop-propagation' role='menu' style='left:auto;right: 0 !important;padding-left:50%;padding-right:50%;padding-top: 0;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);'>
            <h2 id='formtitle'>Login</h2>
          ";

              if($_GET){
                if(isset($_GET['badpassword'])){
                  echo '<h6 color:red> BAD USER/PASS </h6>';
                }
              }

          echo "<br>
          <div class='row'>
            <label for='usr'>Username</label><br/><input id='usr' class='form-control' type='Text' name='username' style='width: 200px;'/>
          </div>
          <div class='row'>
            <label for='pw'>Password:</label><br/><input id='pw' class='form-control' type='password' name='password' style='width: 200px;'/>
          </div>
          <input type='Submit' class='btn btn-primary btn-md' value = 'Submit' style='width: 100%;margin-top: 5%;'/>
          <div style='text-align: center;padding-top: 10%;'>
            <a href='#' id='form-link-toggle'>Register here.</a>
          </div>
          </form>
          </li>
      </ul>
      <script>
        var formlink = document.getElementById('form-link-toggle');
        var formtitle = document.getElementById('formtitle');
        formlink.onclick = function(){
          if(formlink.innerHTML == 'Login here.'){
            document.getElementById('auth_form').setAttribute('action', 'index.php');
            formlink.innerHTML = 'Register here.';
            formtitle.innerHTML = 'Login';
          } else {
            document.getElementById('auth_form').setAttribute('action', 'registration.php');
            formlink.innerHTML = 'Login here.';
            formtitle.innerHTML = 'Register';
          }
        }
      </script>";
        }
        ?>
</nav>
