<?php
  if($_SESSION["loggedin"] != "1"){
    header("Location: index.php?notlogged='1'");
  }
?>
