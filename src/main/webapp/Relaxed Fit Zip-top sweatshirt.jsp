<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"
    />
   
    <link rel="stylesheet" href="./css/styles.css" />
    
    <title>Product Page</title>
  </head>

  <body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<!-- Navigation -->
<div class="top-nav">
        <div class="container d-flex">
          <p>Order Online Or Call Us: (+91) 9823782891</p>
          
        </div>
      </div>
      <div class="navigation">
        <div class="nav-center container d-flex">
        
        <a href="Controller?page=index" class="logo"><h1>Online Shop</h1></a>

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
            
              <div class="icon">
              <i class="bx bx-heart"></i>
              <span class="d-flex">0</span>
            </div>
              
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
            
            <div class="icon">
              <i class="bx bx-heart"></i>
              <span class="d-flex">0</span>
            </div>
            
            <a href="cart.jsp" class="icon cartbutton">
              <i class="bx bx-cart cart-icon"></i>
              <span class="d-flex cart-number">0</span>
            </a>
  
            </c:when>
            </c:choose>
		  </div>

			

			<div class="hamburger">
          <i class="bx bx-menu-alt-left"></i>
        </div>
      </div>
      
    </div>

		<section class="section product-detail">


			<c:forEach items="${list }" var="product">

				<c:if test="${product.getId() == '10	' }">

					<div class="details container">
						<div class="left image-container">
							<div class="main">
								<img
									src="${product.getImage() }"
									id="zoom" alt="" />
							</div>
						</div>
						<div class="right">
							<h1>${product.getName() }</h1>
							<div class="price">Rs. ${ product.getPrice() }</div>
							
							<form class="form">
							 <a href="Controller?page=addtocart&action=product&id=<c:out value="${product.getId()}"/>" class="addCart">Add To Cart</a>
							</form>
						<h3>Product Detail</h3>
						<p>Price (MRP): Rs. ${ product.getPrice() } incl. of all taxes</p>
						<br>
						<p>Country of production: Cambodia</p><br>
						<p>Common generic name: Polo shirt</p><br>
						<p>Net Quantity: 1 N</p><br>
						<p>Manufactured by: N/A</p><br>
						<p>Marketed and imported by: Marketed and H&M Hennes & Mauritz 
						Retail Pvt. Ltd. A-wing, D-3, 2nd Floor District Centre Saket 
						New Delhi -110017 India</p><br>
			
					</div>
					</div>
					
				</c:if>

			</c:forEach>
				
		</section>
	
    <section class="pagination">
      <div class="container">
       <a href="product.jsp"> <span>1</span></a> <a href="Controller?page=women"><span>2</span></a> <a href="mens.jsp"><span>3</span></a> <span>4</span>
        <a href="mens.jsp"><span><i class="bx bx-right-arrow-alt"></i></span></a>
      </div>
    </section>
    <!-- Footer -->
    <footer class="footer">
      <div class="row">
        <div class="col d-flex">
          <h4>INFORMATION</h4>
          <a href="">About us</a>
          <a href="">Contact Us</a>
        </div>
        <div class="col d-flex">
          <h4>USEFUL LINK</h4>
          <a href="">Online Store</a>
          <a href="">Customer Services</a>
          <a href="">Promotion</a>
          <a href="">Top Brands</a>
        </div>
        <div class="col d-flex">
          <span><i class="bx bxl-facebook-square"></i></span>
          <span><i class="bx bxl-instagram-alt"></i></span>
          <span><i class="bx bxl-github"></i></span>
          <span><i class="bx bxl-twitter"></i></span>
          <span><i class="bx bxl-pinterest"></i></span>
        </div>
      </div>
    </footer>
    <script src="./js/index.js"></script>
  </body>
</html>
