<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />

<link rel="stylesheet" href="./css/styles.css" />
<title>Sign Up</title>
</head>
<body>
	<!-- Navigation -->
<div class="top-nav">
      <div class="container d-flex">
        <p>Order Online Or Call Us: (+91)982378289</p>
        
      </div>
    </div>
    <div class="navigation">
      <div class="nav-center container d-flex">
        <a href="Controller?page=index" class="logo"><h1>Shop</h1></a>

         <ul class="nav-list d-flex">
          <li class="nav-item">
            <a href="Controller?page=index" class="nav-link">Home</a>
          </li>
          <li class="nav-item">
            <a href="product.jsp" class="nav-link">Products</a>
          </li>
				
               <li class="icons d-flex">
            
             <c:choose>
				<c:when test="${session == null}">
              <a href="Controller?page=login" class="icon">
                <i class="bx bx-user"></i>
              </a>
              
              
            <div class="icon">
              <i class="bx bx-search"></i>
            </div>
            </c:when>
            
            <c:when test="${session != null}">
            
            <a href="Controller?page=logout" class="icon">
              <i class="bx bx-user">logout(<c:out value="${username }"></c:out>)</i>
            </a>
            
             <a href="cart.html" class="icon cartbuttonside">
               <i class="bx bx-cart cart-icon"></i>
               <span class="d-flex">0</span>
             </a>
             
              </c:when>
              </c:choose>
          </li> 
          </ul>    

          <div class="icons d-flex">
          
          <c:choose>
				<c:when test="${session == null}">
            <a href="Controller?page=login" class="icon">
              <i class="bx bx-user"></i>
            </a>
 
            <div class="searchBar">
                    <input placeholder="Search..." id="searchBar" name="searchBar" type="text" style="border:none; outline:none; background: none; width:80px">
                </div>
                
               <div class="icon">
                  <i class="bx bx-search" id="btn"></i>           
            </div>
            
			</c:when>
			
			<c:when test="${session != null}">
			
			<a href="Controller?page=logout" class="icon">
              <i class="bx bx-user">logout(<c:out value="${username }"></c:out>)</i>
            </a>
            
            <div class="searchBar">
                    <input placeholder="Search..." id="searchBar" name="searchBar" type="text" style="border:none; outline:none; background: none; width:80px">
                </div>
                
               <div class="icon">
                  <i class="bx bx-search" id="btn"></i>           
            </div>           
            
            <a href="Controller?page=showcart" class="icon cartbutton">
              <i class="bx bx-cart cart-icon"></i>
              <span class="d-flex cart-number"><c:out value="${x}"/></span>
            </a>
            
            
            </c:when>
            </c:choose>
		  </div>

          <div class="hamburger">
            <i class="bx bx-menu-alt-left"></i>
          </div>
          
          </div>
        </div> 
	<!-- Login -->
	<div class="container">
		<div class="login-form">
			<form method="post" action="Controller">

				<input type="hidden" name="page" value="sign-up-form">


				<h1>Sign Up</h1>
				<p>
					Please fill in this form to create an account. or <a
						href="Controller?page=login">Login</a>
				</p>
				
				<font color="#F24638"><c:out value="${msg }"></c:out></font>
				<br>

			<label>Name</label> 
			<input type="text" name="name"
			placeholder="Your Name"
			value="<c:out value="${name }"></c:out>" required> 
					
			<label>Email</label>
		    <input type="email" name="email" placeholder="Your Email Address"
			value="<c:out value="${email }"></c:out>" required> 
					
			<label>Username</label>
			<input type="text" name="username" placeholder="Username"
			value="<c:out value="${username }"></c:out>" required>
					
			<label>Address</label> 
			<input type="text" name="address"
			placeholder="Your Address"
			value="<c:out value="${address }"></c:out>" required> 
			
			<label>Password</label> <input type="password" name="password_1" placeholder="Enter password"
			required> 
			
			<label>Confirm Passowrd</label> 
			<input type="password"
			name="password_2" placeholder="Re-enter password" required> 
			
			<label>
			  <input type="checkbox" checked="checked" name="remember"
			  style="margin-bottom: 15px" /> Remember me
            </label>

		    <p>
			   By creating an account you agree to our <a href="#">Terms & Privacy</a>.
		   </p>

				<div class="buttons">
					<button type="submit" name="register" class="signupbtn">Sign Up</button>
				</div>
				
			</form>
		</div>
	</div>

	<!-- Footer -->
	<footer class="footer">
		<div class="row">
			<div class="col d-flex">
				<h4>INFORMATION</h4>
				<a href="">About us</a> <a href="">Contact Us</a> <a href="">Term
					& Conditions</a> <a href="">Shipping Guide</a>
			</div>
			<div class="col d-flex">
				<h4>USEFUL LINK</h4>
				<a href="">Online Store</a> <a href="">Customer Services</a> <a
					href="">Promotion</a> <a href="">Top Brands</a>
			</div>
			<div class="col d-flex">
				<span><i class="bx bxl-facebook-square"></i></span> <span><i
					class="bx bxl-instagram-alt"></i></span> <span><i
					class="bx bxl-github"></i></span> <span><i class="bx bxl-twitter"></i></span>
				<span><i class="bx bxl-pinterest"></i></span>
			</div>
		</div>
	</footer>

	
	<script src="./js/index.js"></script>
</body>
</html>
