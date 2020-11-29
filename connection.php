<?php

// ini_set('session.gc_maxlifetime', 3600);

// // each client should remember their session id for EXACTLY 1 hour
// session_set_cookie_params(3600);


$connection= mysqli_connect("localhost", "root" , "" , "store_project_mysql_php");

if(!$connection){
    die("Connection failed: " . mysqli_connect_error());
}



?>