<?php
    require 'authentication.lib';
    require 'db.lib';
    if(!$connection = @ mysqli_connect("localhost", "root", "toor"))
        die("Cannot connect to database");
    
    // Clean data from login
    
  //  $username = mysqlclean($_POST, username, $connection);
  //  $password = mysqlclean($_POST, password, $connection);
    
    session_start();
    // Validate username and password
    if (authenticateUser($connection, $username, $password)) {
        $_SESSION["username"] = $username;
        $_SESSION["loginIP"] = $_SERVER["REMOTE_ADDR"];
        header("Location: index.html");
        exit;
    }
    else {
        header("Location: login.html");
        exit;
        }
?>
