<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.css" />"
    rel="stylesheet">
    <link href="<c:url value="/resources/css/skdslider.css" />"
    rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.css" />"
    rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/easing.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/minicart.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/move-top.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/responsiveslides.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/skdslider.min.js"/>"></script>
    <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="container">
			<div class="agile-login">
				<ul>
					<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

if(session.getAttribute("email")==null)
    response.sendRedirect("login");


					%>
					<li><a href="logout">Logout</a></li>
					<li><a href="contact">Help</a></li>
					<li><a>welcome ${email}</a>  </li>
					
				</ul>
			</div>
			<div class="product_list_header">  
					<form action="checkout" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="display" value="1">
						
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<input type="hidden" name="semail" value="${email}">

	<div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="index">E-z Shop</a></h1>
			</div>
		
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li><a href="/">Home</a></li>	
									<li><a href="groceries"  >Groceries</a></li>	
									<li><a href="household">Household</a></li>	
									<li><a href="personalcare">Personal Care</a></li>	
									<li><a href="packagedfoods">Packaged Foods</a></li>	
									<li><a href="beverages">Beverages</a></li>	
									<li><a href="gourmet">Gourmet</a></li>
									<li><a href="offers">Offers</a></li>
									<li><a href="contact">Contact</a></li>
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				
				<li class="active">Checkout Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	
	
	<div class="checkout">
		<div class="container">
			<h2>Your shopping cart contains: <span>3 Products</span></h2>
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>
								
							<th>Product Name</th>
							<th>Quanity</th>
							<th>Price</th>
							<th>Remove</th>
						</tr>
					</thead>
					<c:forEach var="emp" items="${listEmp}" varStatus="status">
					<tr class="rem1">
						
						<td class="invert">${emp.item}</td>
						
						<td class="invert">
							 <div class="quantity"> 
								<!-- <div class="quantity-select">-->                           
									<!-- <div class="entry value-minus">&nbsp;</div>-->
									<div class="entry value"><span>1</span></div>
									<!-- <div class="entry value-plus active">&nbsp;</div>-->
								<!-- </div>-->
							</div>
						</td>
						
						<td class="invert">${emp.amount}</td>
						<td class="invert">
							<div class="rem">
									<form:form action="remove" method="post"> 
									<fieldset>
									<input type="hidden" path="email" name="email" value="${email}" />	
									<input type="hidden" name="id" value="${emp.id}" path="id"/>
									</fieldset>
								<div class="close1"><button class="w3view-cart" type="submit" name="submit" value="" id="myButton"></button></div>
								</form:form>
							</div>
			
					</tr>
					</c:forEach>				
				</table>
			</div>														
						
				
		<div class="checkout-right-basket">
					<a href="index"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
				</div><br/><br/>
		<div class="checkout-right-basket">
					<form:form method="post" action="finish">
					<input type="hidden" path="email" name="email" value="${email}" >
					<button type="submit" name="submit" value="Payout" style="background-attachment: scroll;
background-clip: border-box;
background-color: rgb(33, 33, 33);
background-image: none;
background-origin: padding-box;
background-position: 0% 0%;
background-position-x: 0%;
background-position-y: 0%;
background-repeat: repeat;
background-size: auto;border: none;
box-sizing: border-box;
color: rgb(255, 255, 255);
font-family: sans-serif;
font-size: 14px;
font-weight: 700;
line-height: 20px;
margin-bottom: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 0px;
padding-bottom: 10px;
padding-left: 30px;
padding-right: 30px;
padding-top: 10px;
text-decoration: none;
text-decoration-color: rgb(255, 255, 255);
text-decoration-line: none;
text-decoration-style: solid;"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Pay out</button>
					
					</form:form>
				</div>
		
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->
<!-- //footer -->
<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-3 w3_footer_grid">
				
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Information</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="about">About Us</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="contact">Contact Us</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="codes">Short Codes</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="faq">FAQ's</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products">Special Products</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Category</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="groceries">Groceries</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="household">Household</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="personalcare">Personal Care</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="packagedfoods">Packaged Foods</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="beverages">Beverages</a></li>
					</ul>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Profile</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products">Store</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="checkout">My Cart</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="login">Login</a></li>
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="registered">Create Account</a></li>
					</ul>
					
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
		<div class="footer-copy">
			
			<div class="container">
				<p>© 2019 Super Market. All rights reserved </a></p>
			</div>
		</div>
		
	</div>	
	<div class="footer-botm">
			
				</div>
				<div class="payment-w3ls">	
					<img src="<c:url value="/resources/images/card.png"/>" alt=" " class="img-responsive">
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 

</body>
</html>