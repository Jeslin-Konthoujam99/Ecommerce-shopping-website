<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
   <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
 
    <link rel="stylesheet" href="./css/styles.css" />
  
    <title>Your Cart</title>
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

    <!-- Cart Items -->
    <div class="container cart">
    
    <c:choose> 
		<c:when test="${x == 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> item)</h4>
						<br>
		</c:when>
		<c:when test="${x > 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> items)</h4>
						<br>
		</c:when>
		<c:otherwise >
				<h4 style="margin-top: 40px;">Your Shopping Bag is Empty</h4>
				<br>
		</c:otherwise>
	
	</c:choose>
	
      <table>
        <tr>
          <th>Products</th>
          
          <th>SubTotal</th>
        </tr>
	 </table>
	 
	<div class = "product-container">
	
	<c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
			
				<c:if test="${i == Product.getId() }">
				
				<c:set var="total" value="${total + Product.getPrice() }"></c:set>
				
 		<table class="cart-content">
			<tr>
				<td>
					<div class="cart-info">
						<img src="${Product.getImage()}" alt="" />
						<div>
							<p>${Product.getName()}</p>
							<span >Rs. ${Product.getPrice()}</span> <br /> 
							<a href="Controller?page=remove&id=<c:out value="${Product.getId()}"/>"><i class="bx bx-trash-alt cart-remove"></i></a>
						</div>
					</div>
				</td>
	
				<td class="cart-price">Rs. ${Product.getPrice()}</td>
			</tr>
		</table>
		
		</c:if>
			</c:forEach>
		</c:forEach>
	
        
      <div class="total-price">
        <table>
          <tr>
            <td>Total</td>
            <td  class="total-price">Rs.${ total}</td>
          </tr>
        </table>
       <a href="Controller?page=success"  >
       <input type="button" value="Proceed To Checkout" class="checkout btn" style="border:none; outline:none;margin:0; padding:5px; color:white; font-size:12px; "></a>
      </div>   
      </div> 
    </div>    

    <!-- Latest Products -->
    <section class="section featured">
      <div class="top container">
        <h1>Latest Products</h1>
        <a href="product.html" class="view-more">View more</a>
      </div>
      <div class="product-center container">
      
 <c:forEach items="${list }" var="product">

				<c:if test="${product.getFeatured() == 'yes' }">

					<div class="product-item ">
						<div class="overlay">
							<a href="${product.getName() }.jsp"  class="product-thumb"> <img
								src="${product.getImage() }" alt="" />
							</a>
						</div>
						<div class="product-info">
							 <a href="${product.getName() }.jsp"><c:out
									value="${product.getName() }"></c:out></a>
							<h4>
								<c:out value="Rs.${ product.getPrice() }"></c:out>
							</h4>
						</div>
						<ul class="icons">
							
							<li><a
								href="Controller?page=addtocart&action=cart&id=<c:out value="${product.getId()}"/>"><i
									class="bx bx-cart add-cart"></i></a></li>
						</ul>
					</div>

				</c:if>

			</c:forEach>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <div class="row">
        <div class="col d-flex">
          <h4>INFORMATION</h4>
          <a href="">About us</a>
          <a href="">Contact Us</a>
          <a href="">Term & Conditions</a>
          <a href="">Shipping Guide</a>
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
