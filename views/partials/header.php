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
      <li class="nav-item" style="position:fixed; right:0;">
<?php
    if(session_status() == PHP_SESSION_ACTIVE){
      if($_SESSION['loggedin'] == '1'){
        echo "<a class='nav-link' href='/collegeCraft/views/index.php'>Logout</a>";
      }

    } else {
      echo "<a class='nav-link' href='/collegeCraft/views/index.php'>Login</a>";
    }
?>
      </li>
    </ul>
  </div>
</nav>
