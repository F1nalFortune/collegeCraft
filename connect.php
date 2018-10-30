<?php
 $servername = "localhost";
 $username = "root";
 $password = "";
 $db = "collegeCraft";
 // Create connection
 $conn = new mysqli($servername, $username, $password, $db);

 // Check connection
 if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
 }
 echo "Connected successfully";

  $sql = "CREATE DATABASE IF NOT EXISTS collegeCraft";
    if ($conn->query($sql) === TRUE) {
        echo "Database created successfully";
    } else {
        echo "Error creating database: " . $conn->error;
    }

?>
