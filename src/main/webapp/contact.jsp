<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
 
 
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
   
    <link rel="stylesheet" href="./css/styles.css" />
    <title>Online Shop</title>
   <style>
    .gradient-custom-2 {
/* fallback for old browsers */
background: #fccb90;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
}

@media (min-width: 768px) {
.gradient-form {
height: 100vh !important;
}
}
@media (min-width: 769px) {
.gradient-custom-2 {
border-top-right-radius: .3rem;
border-bottom-right-radius: .3rem;
}
}
    
    </style>
  </head>
  <body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<!-- Header -->
    
    
      <!-- Top Nav -->
      
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
              <a href="index.jsp" class="nav-link">Home</a>
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

		 

			 			<section class="h-100 gradient-form" style="background-color: #eee;">
			  <div class="container py-5 h-100">
			    <div class="row d-flex justify-content-center align-items-center h-100">
			      <div class="col-xl-10">
			        <div class="card rounded-3 text-black">
			          <div class="row g-0">
			            <div class="col-lg-6">
			              <div class="card-body p-md-5 mx-md-4">
			
			                <div class="text-center">
			                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
			                    style="width: 185px;" alt="logo">
			                  <h4 class="mt-1 mb-5 pb-1">WE ARE HERE TO HELP</h4>
			                </div>
			
			                <form action="Contact" method="post">
			                  <p>Contact Us Directly Here For Anything:</p>
			
			                  <div class="form-outline mb-4">
			                     <textarea name="message" type="text" id="form2Example11" class="form-control bg-danger-subtle"
			                      placeholder="Write here any personal requests , queries , bussiness proposals ,complaints ,etc" rows="3"></textarea>
			                  </div>
			                  
			                   <div class="form-outline mb-4">
			                    <input name="email" type="email" id="form2Example11" class="form-control bg-danger-subtle"
			                      placeholder="email address" />
			                  </div>
			
			                  <div class="text-center pt-1 mb-5 pb-1">
			                    <input type="submit" value="Send This" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3">
			                   
								<a href="location.jsp" class="btn btn-outline-danger">Our Location if you want to visit</a>
			                  </div>
			
			                </form>
			
			              </div>
			            </div>
			            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
			              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
			                <h4 class="mb-4">YOU CAN CONTACT US AT OUR SOCIAL SITES TOO .</h4>
			                	
					
				 				 
						<center><a href="mailto:jmpurpleworld95@gmail.com" ><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-envelope-at-fill"  viewBox="0 0 16 16">
				  <path d="M2 2A2 2 0 0 0 .05 3.555L8 8.414l7.95-4.859A2 2 0 0 0 14 2zm-2 9.8V4.698l5.803 3.546L0 11.801Zm6.761-2.97-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 9.671V4.697l-5.803 3.546.338.208A4.482 4.482 0 0 1 12.5 8c1.414 0 2.675.652 3.5 1.671"/>
				  <path d="M15.834 12.244c0 1.168-.577 2.025-1.587 2.025-.503 0-1.002-.228-1.12-.648h-.043c-.118.416-.543.643-1.015.643-.77 0-1.259-.542-1.259-1.434v-.529c0-.844.481-1.4 1.26-1.4.585 0 .87.333.953.63h.03v-.568h.905v2.19c0 .272.18.42.411.42.315 0 .639-.415.639-1.39v-.118c0-1.277-.95-2.326-2.484-2.326h-.04c-1.582 0-2.64 1.067-2.64 2.724v.157c0 1.867 1.237 2.654 2.57 2.654h.045c.507 0 .935-.07 1.18-.18v.731c-.219.1-.643.175-1.237.175h-.044C10.438 16 9 14.82 9 12.646v-.214C9 10.36 10.421 9 12.485 9h.035c2.12 0 3.314 1.43 3.314 3.034zm-4.04.21v.227c0 .586.227.8.581.8.31 0 .564-.17.564-.743v-.367c0-.516-.275-.708-.572-.708-.346 0-.573.245-.573.791Z"/>
				</svg>	</a>		 
				 					
				<a href="https://twitter.com/JeslinKmin1999?t=odH0ACot1aRrKkue-Tphrg&s=09"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="blue" class="bi bi-twitter-x" viewBox="0 0 16 16">
				  <path d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865l8.875 11.633Z"/>
				</svg></a>
							 
						<a href="https://www.youtube.com/@jeslinkonthoujam726"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="red" class="bi bi-youtube" viewBox="0 0 16 16">
				  <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
				</svg></a>
					
					<a href="https://www.instagram.com/jmpurpleworld/?igshid=NGVhN2U2NjQ0Yg%3D%3D">	<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="red" class="bi bi-instagram"  viewBox="0 0 16 16">
				  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
				</svg></a>
				</center>
				
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>
			    </div>
			  </div>
			</section>
 			


<br>
	<br>
	
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
          <span><i class='bx bxl-facebook-square'></i></span>
          <span><i class='bx bxl-instagram-alt' ></i></span>
          <span><i class='bx bxl-github' ></i></span>
          <span><i class='bx bxl-twitter' ></i></span>
          <span><i class='bx bxl-pinterest' ></i></span>
        </div>
      </div>
    </footer>


  <!-- PopUp -->
  
  <div class="popup hide-popup">
    <div class="popup-content">
      <div class="popup-close">
        <i class='bx bx-x'></i>
      </div>
      <div class="popup-left">
        <div class="popup-img-container">
          <img class="popup-img" src="https://lp2.hm.com/hmgoepprod?source=url[https://www2.hm.com/content/dam/global_campaigns/season_08/men/3168h/3168H-3x2-1.jpg]&scale=size[1200]&sink=format[jpeg],quality[80]" alt="popup">
        </div>
      </div>
      <div class="popup-right">
        <div class="right-content">
          <h1>Get Discount <span>50%</span> Off</h1>
          <p>Sign up to our newsletter and save 30% for you next purchase. No spam, we promise!
          </p>
          <form action="#">
            <input type="email"  placeholder="Enter your email..." class="popup-form">
            <a href="#">Subscribe</a>
          </form>
        </div>
      </div>
    </div>
  </div> 

  </body>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

   <script src="./js/index.js"></script>
  <script src="./js/slider.js"></script>
  
</html>
