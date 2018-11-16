<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info</title>
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
button.btn :active
{
	background-color:white;
}
button.btn :hover
{
	background-color:white;
}
</head>
<body >
<div class="wrap"> 
	<jsp:include page="header.jsp"></jsp:include>
	<div style="background-image: url(http://localhost:8080/FirstShop//images//background.jpg);">
	<div style="padding-top:100px;">
		<div class="viewinfo" style="color:white; width:60%;height:500px;background-color:rgba(6, 6, 6, 0.42);margin-left:auto;margin-right:auto;border:1px solid;border-radius:5px;">
			<h3  style="text-align:center;padding-top:40px;magrgin-top:50px; margin-bottom:50px;">Wellcome, ${sessionScope.account.firstName } ${sessionScope.account.lastName }</h3>
			<h5  style="magrgin-top:30px; margin-bottom:30px;white-space: pre;">		UserName : ${sessionScope.account.userName }</h5>
			<h5  style="magrgin-top:30px; margin-bottom:30px;white-space: pre;">		Email    : ${sessionScope.account.email }</h5>
			<h5  style="magrgin-top:30px; margin-bottom:30px;white-space: pre;">		Phone	 : ${sessionScope.account.phone } </h5>
			<h5  style="magrgin-top:30px; margin-bottom:30px;white-space: pre;">		Addr     : ${sessionScope.account.addr }</h5>
			<h5  style="magrgin-top:30px; margin-bottom:30px;white-space: pre;">		Sex      : ${sessionScope.account.sex }</h5>
			
		</div>
		<div style="weight:200px;text-align:center;padding-bottom:150px;padding-top:50px;">
		<a href="index"><button class="btn" style="width:100px;background-color:#57b846; border-radius: 15px;color:White;">HOME</button></a>
		<a href="logout"><button class="btn" style="margin-left:50px;width:100px;background-color:#57b846; border-radius: 15px;color:White;">LOGOUT</button></a>
		<a href="editUser"><button class="btn" style="margin-left:50px;width:100px;background-color:#57b846; border-radius: 15px;color:White;">EDIT</button></a>
	</div>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
	
	</div>
</body>
</html>