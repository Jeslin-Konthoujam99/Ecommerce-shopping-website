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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
   
    <link rel="stylesheet" href="./css/styles.css" />
    <title>Online Shop</title>
  </head>
  <body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<!-- Header -->
    <header class="header" id="header">
    
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

		 
		 
		 
    <div class="hero">
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide">
              <div class="center">
                <div class="left">
                  <span class="">New Inspiration 2023</span>
                  <h1 class="">NEW COLLECTION!</h1>
                  <p>Trending from men's and women's  style collection</p>
                  <a href="product.jsp" class="hero-btn">SHOP NOW</a>
                </div>
                <div class="right">
                    <img class="img1" src="//lp2.hm.com/hmgoepprod?set=source[/2f/62/2f623e520d506a1b72b045c67c90a208c61db3a7.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]" alt="">
                </div>
              </div>
            </li>
            <li class="glide__slide">
              <div class="center">
                <div class="left">
                  <span>New Inspiration 2023</span>
                  <h1>THE PERFECT MATCH!</h1>
                  <p>Trending from men's and women's  style collection</p>
                  <a href="product.jsp" class="hero-btn">SHOP NOW</a>
                </div>
                <div class="right">
                  <img class="img2" src="//lp2.hm.com/hmgoepprod?set=source[/fa/e3/fae35d02c58c33d52d3b8987cc5033f9e5fee291.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]" alt="">
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    </header>

    <!-- Categories Section -->
    <section class="section category">
      <div class="cat-center">
        <div class="cat">
          <img src="https://lp2.hm.com/hmgoepprod?set=source[/25/98/2598086e020572e8bcdde5c21b372e5b579e5b9f.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]" alt="" />
          <div>
            <a href="Controller?page=women">WOMEN'S WEAR</a>
          </div>
        </div>
        <div class="cat">
          <img src="//lp2.hm.com/hmgoepprod?set=source[/2f/62/2f623e520d506a1b72b045c67c90a208c61db3a7.jpg],origin[dam],category[],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/style]" alt="" />
          <div>
            <a href="Controller?page=men">MEN'S WEAR</a>
          </div>
        </div>
      </div>
    </section>

<!-- Featured -->

	<section class="section new-arrival">
		<div class="title">
			<h1>Featured</h1>
			<p>All the latest picked from designer of our store</p>
		</div>



		<div class="product-center">

			<c:forEach items="${list }" var="product">

				<c:if test="${product.getCategory() == 'women' }">

					<div class="product-item ">
						<div class="overlay">
							<a href="${product.getName() }.jsp"  class="product-thumb"> <img
								src="${product.getImage() }" alt="" />
							</a>
						</div>
						<div class="product-info">
							<span>MEN'S CLOTHES</span> <a href="${product.getName()}.jsp">
							<c:out value="${product.getName() }"></c:out></a>
							<h4>
								<c:out value="Rs.${ product.getPrice() }"></c:out>
							</h4>
						</div>
						<ul class="icons">
							
							<li><a
								href="Controller?page=addtocart&action=index&id=<c:out value="${product.getId()}"/>"><i
									class="bx bx-cart add-cart"></i></a></li>
						</ul>
					</div>

				</c:if>

			</c:forEach>

		</div>

	</section>

   

    <!-- Promo -->

    <section class="section banner">
<div class="left">
  <span class="trend">Trend Design</span>
  <h1>New Collection 2023</h1>
  <p>New Arrival <span class="color">Sale 50% OFF</span> Limited Time Offer</p>
  <a href="product.jsp" class="btn btn-1" style="color:white; text:white; ">Discover Now</a>
</div>
<div class="right">
  <img src="https://image.hm.com/content/dam/global_campaigns/season_08/divided/5038h/5038H-3x2.jpg?imwidth=768" alt="">
</div>
    </section>

     <!-- Contact -->
    <section class="section contact">
      <div class="row">
        <div class="col">
          <h2>EXCELLENT SUPPORT</h2>
          <p>We love our customers and they can reach us any time
          of day we will be at your service 24/7</p>
          <a href="index.jsp" class="btn btn-1" style="color:white; text:white; ">Contact</a>
        </div>
        <div class="col">
          <form action="sendMail">
            <div>
              <input type="email" placeholder="Email Address">
            <a href="">Send</a>
            </div>
          </form>
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
          <a href="contact.jsp">Contact Us</a>
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
