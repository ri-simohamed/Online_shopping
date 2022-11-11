<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Shopping Login Page</title>
<link rel="stylesheet" type="text/css" href="Style/style.css">
<%@include file="includes/style.jsp"%>

<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<link href="css/index-styles.css" rel="stylesheet" />

<style><i class="bi bi-person-circle"></i></style>

</head>
<body style="background-color: gray">


    <nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">R_S_P</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="product.jsp">Products <svg
				           xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				           fill="currentColor" class="bi bi-bookmark" viewBox="0 0 16 16">
                            <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                              </svg></a></li>
		      			<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="cart.jsp">Cart 
			 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
			fill="currentColor" class="bi bi-cart-plus-fill" viewBox="0 0 16 16">
           <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM9 5.5V7h1.5a.5.5 0 0 1 0 1H9v1.5a.5.5 0 0 1-1 0V8H6.5a.5.5 0 0 1 0-1H8V5.5a.5.5 0 0 1 1 0z" />
            </svg> <span class="badge badge-danger px-1" style="background-color: red;">${ cart_list.size() }</span>
						</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#">Help 
						<svg xmlns="http://www.w3.org/2000/svg"
				         width="16" height="16" fill="currentColor"
				         class="bi bi-info-circle-fill" viewBox="0 0 16 16">
                         <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
                            </svg></a></li>

				</ul>
			</div>
		</div>
	</nav><br><br><br><br><br>
	<div class="container">
		<div class="card w-50 ma-outo my-3">
			<div class="card-header text-center">Login</div>
			<div class="card-body"></div>

			<div class="whysing">
		<% 
		
		String msg = request.getParameter("msg");
		if("invalid".equals(msg)){
		     	
		%>
				<h2 style="color: red;">Incorrect username or password</h2>
				<%} %>
				
			</div>
			<form action="loginAction" method="post">

				<div class="form-group">

					<label>Email</label> <input type="email" class="form-control"
						name="email" placeholder="Enter Email..." required> <label>Password</label>
					<input type="password" class="form-control" name="password"
						placeholder="********" required> <br>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
			</form>
			<br>


			<h1 style="text-align: center; font-size: 17px;">
				<a href="forgotpassword.jsp">Forgot Password?</a>
			</h1>
			<br>
		</div>
	</div>

</body>
</html>