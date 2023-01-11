<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Inventory Dashboard</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap-grid.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="../../resources/css/admin_panel_custom.css">
	<link rel="stylesheet" type="text/css" href="../../resources/css/admin_media_query.css">
	<link rel="stylesheet" type="text/css" href="../../resources/css/inventory_dashboard.css">
	<link rel="stylesheet" type="text/css" href="../../resources/css/home.css">
	
</head>


<body>

	<!-- Header -->
	<div class="p-2 container-fluid theme-bg-color">
		<div class="container">
			<div class="row">
			<div class="col-12 col-sm-2">
				<img src="../../resources/header_images/uptrend_logo.png" class="img-fluid">
			</div>

			<div class="col-12 col-sm-2 d-flex align-items-center justify-content-center home-btn-parent">
				<button type="button" class="nav-home-btn theme-bg-color" onclick="location.href='http://localhost:8090/Uptrend/functions/common/admin_panel.jsp'">Home</button>
			</div>
			
			<div class="col-12 col-sm-3 d-flex align-items-center justify-content-center home-btn-parent">
				<button type="button" class="nav-home-btn theme-bg-color" onclick="location.href='http://localhost:8090/Uptrend/functions/common/admin_panel.jsp'">About Us</button>
			</div>

			<div class="col-12 col-sm-5 d-flex align-items-center media-flex hide">
				<div class="row">
					<div class="col-6 cart-btn-frame">
						<button class="btn"><i class="fa fa-shopping-cart cart-btn" aria-hidden="true"></i></button>
					</div>
					<div class="col-6 cart-btn-frame">
						<button class="btn"><i class="fa fa-user cart-btn" aria-hidden="true"></i></button>
					</div>
				</div>
				
			</div>

		</div>
		</div>
	</div>

	<!-- Body -->
	
	<div class="body-content">
		<div class="row col-12 col-sm-12 home-nav">
			<div class="col-sm-3 d-flex justify-content-center"><a onclick="location.href='stock-view?id=1'">Men</a></div>
			<div class="col-sm-3 d-flex justify-content-center"><a>Women</a></div>
			<div class="col-sm-3 d-flex justify-content-center"><a>Kids</a></div>
			<div class="col-sm-3 d-flex justify-content-center"><a>Unisex</a></div>
		</div>
		
		<div class="row col-12 col-sm-12 stocks">
		 	
		 	<c:forEach var="stockViewRecord" items="${stockViewRecord}">
		 	
			 	<div class="col-6 col-sm-4 card-frame">
			 	
			 		<div class="card">
			 		  <div class="d-flex justify-content-center item-image">
			 		  	<img src="../../resources/stock_images/jeans3.jpg" alt="Denim Jeans" style="width:300px; height:350px;">
			 		  </div>
					  
					  <h1 class="d-flex justify-content-center"><c:out value="${stockViewRecord.itemName}" /></h1>
					  <p class="price">LKR <c:out value="${stockViewRecord.sellPrice}" /></p>
					  <p><c:out value="${stockViewRecord.available}" /></p>
					  <p><button>Add to Cart</button></p>
					</div>
				</div>
			</c:forEach>
				
		</div>
	</div>
	



	<!-- Footer -->
	<div class="p-4 container-fluid theme-bg-color d-flex justify-content-center align-items-center">
		<div class="footer-title text-center">
			Copyright © 2022 Uptrend - All Rights Reserved
		</div>
	</div>


</body>
</html>