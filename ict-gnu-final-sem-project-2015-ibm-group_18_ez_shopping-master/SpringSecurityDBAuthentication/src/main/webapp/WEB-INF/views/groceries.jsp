<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
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
    <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Groceries :: w3layouts</title>
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
									<li class="active"><a href="/">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<li class="active"><a href="household">Household</a></li>	
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													
												</div>
												
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<li class="active"><a href="personalcare">Personal Care</a></li>	
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													
												</div>
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
									<li class="active"><a href="packagedfoods">Packaged Foods</a></li>	
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													
											</div>
												
											
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<li class="active"><a href="beverages">Beverages</a></li>	
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													
											</div>
							
											</div>
										</ul>
									</li>
									</li>
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
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Groceries</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- groceries --->
	<div class="products">
		<div class="container">
			<div class="col-md-4 products-left">
				<div class="categories">
					<h2>Categories</h2>
					<ul class="cate">
						<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fruits And Vegetables</a></li>
							<ul>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cuts & Sprouts</a></li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flowers</a></li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Herbs & Seasonings</a></li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Fresh Vegetables</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>International Vegetables</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Fruits & Vegetables</a></li>
							</ul>
						<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Grocery & Staples</a></li>
							<ul>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dals & Pulses</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Dry Fruits</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Edible Oils & Ghee</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Flours & Sooji</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Masalas & Spices</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Organic Staples</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Rice & Rice Products</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Salt, Sugar & Jaggery</a></li>
							</ul>
						<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>PersonalCare</a></li>
							<ul>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Baby Care</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Cosmetics</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Deos & Perfumes</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Skin Care</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sanitary Needs</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Oral Care</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Personal Hygiene</a> </li>
								<li><a href="products"><i class="fa fa-arrow-right" aria-hidden="true"></i>Shaving Needs</a></li>
							</ul>
					</ul>
				</div>																																												
			</div>
			<div class="col-md-8 products-right">
				<div class="products-right-grid">
					<div class="products-right-grids">
						<div class="sorting">
							
						</div>
						<div class="sorting-left">
							
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/14.png"/>"></a>		
												<p>Toor Dal</p>
												<h4>$35 <span>$55</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Toor Dal" />
														<form:input type="hidden" path="amount" name="amount" value="35" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/15.png"/>"></a>		
												<p>Moong Dal</p>
												<h4>$30 <span>$45</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Moong Dal" />
														<form:input type="hidden" path="amount" name="amount" value="30" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img src="<c:url value="/resources/images/16.png"/>" alt=" " class="img-responsive"></a>
												<p>Channa</p>
												<h4>$80 <span>$105</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Channa" />
														<form:input type="hidden" path="amount" name="amount" value="80" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
						<div class="clearfix"> </div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/17.png"/>"></a>		
												<p>Arhar Dal</p>
												<h4>$35 <span>$55</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Arhar Dal" />
														<form:input type="hidden" path="amount" name="amount" value="35" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/14.png"/>"></a>		
												<p>Toor Dal</p>
												<h4>$30 <span>$45</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Toor Dal" />
														<form:input type="hidden" path="amount" name="amount" value="30" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img src="<c:url value="/resources/images/15.png"/>" alt=" " class="img-responsive"></a>
												<p>Moong Dal</p>
												<h4>$80 <span>$105</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Moong Dal" />
														<form:input type="hidden" path="amount" name="amount" value="80" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
						<div class="clearfix"> </div>
				</div>
				<div class="agile_top_brands_grids">
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/16.png"/>"></a>		
												<p>Channa</p>
												<h4>$35 <span>$55</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Channa" />
														<form:input type="hidden" path="amount" name="amount" value="35" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img title=" " alt=" " src="<c:url value="/resources/images/17.png"/>"></a>		
												<p>Arhar Dal</p>
												<h4>$30 <span>$45</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Arhar Dal" />
														<form:input type="hidden" path="amount" name="amount" value="30" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid_pos">
									<img src="<c:url value="/resources/images/offer.png"/>" alt=" " class="img-responsive">
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<a href="single"><img src="<c:url value="/resources/images/14.png"/>" alt=" " class="img-responsive"></a>
												<p>Toor Dal</p>
												<h4>$80 <span>$105</span></h4>
											</div>
											<div class="snipcart-details top_brand_home_details">
												<form:form action="cart" method="post">
													<fieldset>
														
														<form:input type="hidden" path="add" name="add" value="1" />
														
														<form:input type="hidden" path="item" name="item_name" value="Toor Dal" />
														<form:input type="hidden" path="amount" name="amount" value="80" />
														<form:input type="hidden" path="discount" name="discount_amount" value="1" />
														<form:input type="hidden" path="email" name="email" value="${email}" />
														<form:input type="hidden" path="currency" name="currency_code" value="USD" />
														
														
														<input type="submit" name="submit" value="Add to cart" class="button" >
													</fieldset>
												</form:form>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
						<div class="clearfix"> </div>
				</div>
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!--- groceries --->
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
				<p>© 2019 Super Market. All rights reserved </p>
			</div>
		</div>
		
	</div>	
	<div class="footer-botm">
			<div class="container">
				<div class="w3layouts-foot">
				
				</div>
				<div class="payment-w3ls">	
					<img src="<c:url value="/resources/images/.png"/>" alt=" " class="img-responsive">
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