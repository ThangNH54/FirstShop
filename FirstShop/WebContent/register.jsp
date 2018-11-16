<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<jsp:include page="scriptHeader.jsp"></jsp:include>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
<div class="wrap">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
			
				<form action="signup" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-70">
						Register
					</span>
					<span class="login100-form-avatar">
						<img src="images/avatar-01.jpg" alt="AVATAR">
					</span>
					
					<div class="msg" style="padding-top:50px;"><h4>${requestScope.msg}</h4></div><!-- msg thong bao  -->
					
					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter username">
						<input class="input100" type="text" name="userName">
						<span class="focus-input100" data-placeholder="Username"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter Email">
						<input class="input100" type="email" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter First Name">
						<input class="input100" type="text" name="firstName">
						<span class="focus-input100" data-placeholder="FirstName"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter LastName">
						<input class="input100" type="text" name="lastName">
						<span class="focus-input100" data-placeholder="LastName"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter sex">
						<input class="input100" type="text" name="sex">
						<span class="focus-input100" data-placeholder="Sex"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter addr">
						<input class="input100" type="text" name="addr">
						<span class="focus-input100" data-placeholder="Addr"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter phone Number">
						<input class="input100" type="number" name="phoneNumber">
						<span class="focus-input100" data-placeholder="Phone Number"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter Password">
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter confirm password">
						<input class="input100" type="password" name="confirmPassword">
						<span class="focus-input100" data-placeholder="Confirm Password"></span>
					</div>
					
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
						<input type="submit" name="submit" value="">Submit
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>