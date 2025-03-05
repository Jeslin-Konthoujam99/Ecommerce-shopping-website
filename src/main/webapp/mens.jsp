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
    
    <title>Men's Products</title>
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
          <ul class="d-flex">
            <li><a href="about.jsp">About Us</a></li>
          </ul>
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

    <!-- All Products -->
    <section class="section all-products" id="products">
		<div class="top container">
		
			<a href="Controller?page=product" class="list-group-item">
				<span style="font-size: 30px;">Men's Products</span>
			</a>

	
		</div>

		<div class="product-center">

			<c:forEach items="${list }" var="product">

				<c:if test="${product.getCategory() == 'men' }">

					<div class="product-item ">
						<div class="overlay">
							<a href="" class="product-thumb"> <img
								src="${product.getImage() }" alt="" />
							</a>
						</div>
						<div class="product-info">
							<span>WOMEN'S CLOTHES</span> <a href="${product.getName() }.jsp"><c:out
									value="${product.getName() }"></c:out></a>
							<h4>
								<c:out value="Rs.${ product.getPrice() }"></c:out>
							</h4>
						</div>
						<ul class="icons">
							
							<li><a
								href="Controller?page=addtocart&action=men&id=<c:out value="${product.getId()}"/>"><i
									class="bx bx-cart add-cart"></i></a></li>
						</ul>
					</div>

				</c:if>

			</c:forEach>

		</div>
		
        
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
    <!-- Custom Script -->
 

    <script src="./js/index.js"></script>
  </body>
</html>
