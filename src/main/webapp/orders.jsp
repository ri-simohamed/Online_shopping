<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Orders</title>

<link rel="stylesheet" type="text/css" href="Style/style1.css">
<%@include file="includes/style.jsp"%>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />

<style><i class="bi bi-person-circle"></i></style>

</head>
<body style="background-color: gray;">

	<h1 style="text-align: center;">Online Shopping</h1>

	<div class="topnav">

		<a href="#">Log Out<i class="fas fa-share-square"></i></a> <a href="#">Delivered
			Orders<i class="fas fa-dolly"></i>
		</a> <a href="orders.jsp">Orders received<i class="fas fa-archive"></i></a>
		<a href="#">Message Received<i class="fas fa-comment-alt"></i></a> <a
			href="#">All Products & Edit Products<i class='fab fa-elementor'></i></a>
		<a href="AddProduct.jsp">Add New Product<i
			class='fas fa-plus-square'></i></a> <a href="index.jsp" class="rsp"><svg
				xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-house-door-fill"
				viewBox="0 0 16 16">
          <path
					d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
          </svg> RSP</a>
	</div>

	<div class="container">
		<div class="d-flex py-3"></div>

		<table class="table table-loght">
			<thead>
				<tr>
					<th scope="col">Category</th>
					<th scope="col">Serie</th>
					<th scope="col">Price</th>
					<th scope="col">Description</th>
					<th scope="col">Quantity</th>
					<th scope="col">State</th>
				</tr>

			</thead>

			<tbody>

				<tr>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
				</tr>

			</tbody>

		</table>

		<h1 style="color: red">--> Orders Data</h1>

		<table class="table table-loght">
			<thead>
				<tr>
					<th scope="col">Or-Name</th>
					<th scope="col">Or-Email</th>
					<th scope="col">Or-Phone</th>
					<th scope="col">Or-Address</th>
					<th scope="col">Or-City</th>
					<th scope="col">Delivred</th>
				</tr>

			</thead>

			<tbody>

				<tr>
					<td>Mohamed</td>
					<td>fhjd</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td>dgddfdgssg</td>
					<td><a class="btn btn-sm btn-danger" style="background-color: green;" href="#">Delivred</a></td>

				</tr>

			</tbody>

		</table>

	</div>

</body>
</html>