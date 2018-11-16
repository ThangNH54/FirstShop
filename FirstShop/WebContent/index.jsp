<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
	<jsp:include page="scriptHeader.jsp"></jsp:include>
</head>
<body>
	<div class="wrap">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="menu-bg">
	<ul class="menu">
		<li><a href="home-appliances.html">Home Appliances</a></li>
		<li><a href="accessories.html">Accessories</a>
			<ul>
				<li><a href="accessories.html" >Tablet</a></li>
				<li><a href="accessories.html">Camera</a></li>
				<li><a href="accessories.html">Peripherals</a></li>
			</ul>
		</li>
		<li><a href="computing.html">Computing</a></li>
		<li><a href="accessories.html" >Mobiles</a></li>
	</ul> 
	<div class="search">
	    <form>
	    	<input type="text" value="">
	    	<input type="submit" value="">
	    </form>
	</div>
	<div class="clear"></div>
</div>
<div class="flexslider">
   	<div class="flex-viewport" style="overflow: hidden; position: relative;">
   		<ul class="slides" style="width: 100%; -webkit-transition: 0.6s; transition: 0.6s; -webkit-transform: translate3d(-5032px, 0, 0);">
   			<li class="clone" style="width: 100%; float: left; display: block;">
        		<img src="images/slider1.jpg" alt=""/>
    		</li>
       		<li style="width: 100%; float: left; display: block;" class="">
    	    	<img src="images/slider2.jpg" alt=""/>
    		</li>
    		<li class="" style="width:100%; float: left; display: block;">
    	    	<img src="images/slider3.jpg" alt=""/>
    		</li>
		</ul>
	</div>
</div>
<div class="content">
<div class="section group">
	<div class="col_1_of_3 span_1_of_3">
		<div class="grid-imgs">
			<a href="details.html"><img src="images/pic1.jpg" alt=""/></a> 
		</div>
		<h2>Lorem Ipsum is simply dummy text </h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
	</div>
	<div class="col_1_of_3 span_1_of_3">
		<div class="grid-imgs">
				<a href="details.html"><img src="images/pic2.jpg" alt=""/></a> 
		</div>
		<h2>Lorem Ipsum is simply dummy text </h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
	</div>
	<div class="col_1_of_3 span_1_of_3">
		<div class="grid-imgs">
				<a href="details.html"><img src="images/pic3.jpg" alt=""/></a> 
		</div>
		<h2>Lorem Ipsum is simply dummy text </h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
	</div>
</div>
<div class="text-h">
	<h2>feature products</h2>
</div>
<div class="section group">
	<div class="col_1_of_5 span_1_of_5">
		<div class="grid-img">
				<a href="details.html"><img src="images/pic4.jpg" alt=""/></a> 
		</div>
		<p>Sed do eiusmod tempor incididunt ut labore et dolore.</p>
		<button class="left">$23.58</button>
		<div class="btn right"><a href="details.html">view</a></div>
	</div>
	<div class="col_1_of_5 span_1_of_5">
		<div class="grid-img">
			<a href="details.html"><img src="images/pic5.jpg" alt=""/></a> 
		</div>
		<p>Sed do eiusmod tempor incididunt ut labore et dolore.</p>
		<button class="left">$23.58</button>
		<div class="btn right"><a href="details.html">view</a></div>
	</div>
	<div class="col_1_of_5 span_1_of_5">
		<div class="grid-img">
			<a href="details.html"><img src="images/pic6.jpg" alt=""/></a> 
		</div>
		<p>Sed do eiusmod tempor incididunt ut laboreet dolore.</p>
		<button class="left">$23.58</button>
		<div class="btn right"><a href="details.html">view</a></div>
	</div>
	<div class="col_1_of_5 span_1_of_5">
		<div class="grid-img">
			<a href="details.html"><img src="images/pic7.jpg" alt=""/></a> 
		</div>
		<p>Sed do eiusmod tempor incididunt ut labore et dolore.</p>
		<button class="left">$23.58</button>
		<div class="btn right"><a href="details.html">view</a></div>
	</div>
	
</div>
</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>