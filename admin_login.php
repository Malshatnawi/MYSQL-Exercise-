<?php

ini_set('session.gc_maxlifetime', 3600);

// each client should remember their session id for EXACTLY 1 hour
session_set_cookie_params(3600);


include 'includes/connection.php';



// if(isset($_POST['admin_login'])){
//     $admin_email=$_POST['admin_email'];
//     $admin_password=$_POST['admin_password'];

//     $query="SELECT * FROM admins WHERE Email ='$admin_email';";

//     $result=mysqli_query($connection, $query);

//     $row=mysqli_fetch_assoc($result);

//     if(mysqli_num_rows($result) > 0){
//         if($admin_password==$row['Password']){
//             header("location:index.php");
//             die();
//         }
//         else{
//             echo "Wrong Password";
//         }
//     }
//     else{
//         echo "User does not exist";
//     }


    
// }


?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V12</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images1/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css1/util.css">
	<link rel="stylesheet" type="text/css" href="css1/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images1/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form" method="POST">
					<div class="login100-form-avatar">
						<img src="images1/admin_pic.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						Admins Login
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Email is required">
						<input class="input100" type="text" name="admin_email" placeholder="Email Address">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<input class="input100" type="password" name="admin_password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn" name="admin_login">
							Login
						</button>
					</div>
                    <div class="text-center w-full p-t-15"><p class="justify-content-center text-danger">
                    <?php
session_start();




if(isset($_POST['admin_login'])){
    $admin_email=$_POST['admin_email'];
    $admin_password=$_POST['admin_password'];

    $query="SELECT * FROM admins WHERE Email ='$admin_email';";

    $result=mysqli_query($connection, $query);

    $row=mysqli_fetch_assoc($result);

    if(mysqli_num_rows($result) > 0){
        if($admin_password==$row['Password']){
			$_SESSION['admin']=$row['ID'];
			
            
			header("location:index.php");
			// die();
        }
        else{
            echo "Wrong Password";
        }
    }
    else{
        echo "User does not exist";
    }


    
}

                    ?>
                    </p></div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor1/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/bootstrap/js/popper.js"></script>
	<script src="vendor1/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js1/main.js"></script>

</body>
</html>