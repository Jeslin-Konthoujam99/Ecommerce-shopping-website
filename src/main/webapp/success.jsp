<%@page import="beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    <title>Order Page</title>
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


	<c:choose>
		<c:when test="${session == null}">
			<%
			JOptionPane.showMessageDialog(null, "Please Login first", "Info", JOptionPane.INFORMATION_MESSAGE);
			request.getRequestDispatcher("login.jsp").forward(request, response);
			%>
		</c:when>

		<c:when test="${x == 0}">

			<%
			JOptionPane.showMessageDialog(null, "Your shopping bag is empty", "Info", JOptionPane.INFORMATION_MESSAGE);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
			%>
		</c:when>

		<c:when test="${session != null}">


			<center><div class="container" style="margin-top: 60px; margin-bottom: 60px;">
				<h4>
					Thank you <font color="#6bb1f8"><c:out value="${name }"></c:out></font>
					for Shopping with us. We received your order and it will be
					delivered to <font color="#6bb1f8"><c:out
							value="${address }"></c:out></font> with in 4-5 working days.
				</h4>
				<h4>
					Confirmation mail will be sent shortly to <font color="#6bb1f8"><c:out
							value="${email }"></c:out></font>.
				</h4>

				<br>
				<br>

				
					<a href="Controller?page=index"><input type="button"
						value="Continue Shopping" class="btn btn-warning"
						style="width: 50%; padding: 8px; font-size: 16px; background: rgb(106, 9, 11); text: white; border: none; border-radius: 3px; color:white;">
					</a>
			</div></center>

		</c:when>

	</c:choose>


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
