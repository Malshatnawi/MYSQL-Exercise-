<?php

ini_set('session.gc_maxlifetime', 3600);

// each client should remember their session id for EXACTLY 1 hour
session_set_cookie_params(3600);


$connection= mysqli_connect("localhost", "root", "","store_project_mysql_php");

if(!$connection){
    die("can not connect to the server");
};





if($_SERVER['HTTP_REFERER']=="http://localhost/shop-mysql_php/admins/categories.php"){
    $query="delete from categories where ID = {$_GET['id']};";
    mysqli_query($connection, $query);
    header("location:categories.php");

}
elseif($_SERVER['HTTP_REFERER']=="http://localhost/shop-mysql_php/admins/index.php"){
    $query="delete from admins where ID = {$_GET['id']};";
    mysqli_query($connection, $query);
    header("location:index.php");
}
elseif($_SERVER['HTTP_REFERER']=="http://localhost/shop-mysql_php/admins/products.php"){
    $query="delete from products where ID = {$_GET['id']};";
    mysqli_query($connection, $query);
    header("location:products.php");
};

?>