<?php
 $servername = "localhost";
 $username = "username";
 $password = "password";
 $db = "collegeCraft";
 // Create connection
 $conn = new mysqli($servername, $username, $password, $db);

 // Check connection
 if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
 }
 echo "Connected successfully";

  $sql = "CREATE DATABASE collegeCraft";
    if ($conn->query($sql) === TRUE) {
        echo "Database created successfully";
    } else {
        echo "Error creating database: " . $conn->error;
    }

?>
