<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="connect.Dao"%>
<%@ page import="java.util.Vector"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

    <title>SEO Dream - Creative SEO HTML5 Template by TemplateMo</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-seo-dream.css">
    <link rel="stylesheet" href="assets/css/animated.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<!--

TemplateMo 563 SEO Dream

https://templatemo.com/tm-563-seo-dream

-->


</head>

<body>
<%
	Dao dao = new Dao();
	String u = dao.layUser();
	Vector r = dao.hv(u);
	%>
  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="index.html" class="logo">
              <h4>Upright <img src="assets/images/logo-icon.png" alt=""></h4>
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <!-- <ul class="nav">
              <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
              <li class="scroll-to-section"><a href="#features">Features</a></li>
              <li class="scroll-to-section"><a href="#about">About Us</a></li>
              <li class="scroll-to-section"><a href="#services">Services</a></li>
              <li class="scroll-to-section"><a href="#portfolio">Portfolio</a></li>
              <li class="scroll-to-section"><a href="#contact">Contact Us</a></li> 
              <li class="scroll-to-section"><div class="main-blue-button"><a href="#contact">Get Your Quote</a></div></li> 
            </ul>   -->      
            <ul class="nav">
              <li class="scroll-to-section"><a href="index.jsp" >Home</a></li>
              <li class="scroll-to-section"><a href="xtt.jsp" class="active">Xem Thông Tin</a></li> 
              <li class="scroll-to-section"><a href="nophocphi.jsp">Nộp Học Phí</a></li>
              <li class="scroll-to-section"><div class="main-blue-button"><a href="ServletLogOut">Log Out</a></div></li> 
            </ul>   
            <a class='menu-trigger'>
                <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="main-banner wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="left-content header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                <div class="row">
                  <!-- <div class="col-lg-4 col-sm-4">
                    <div class="info-stat">
                      <h6>Agency Status:</h6>
                      <h4>Ready Work</h4>
                    </div>
                  </div>
                  <div class="col-lg-4 col-sm-4">
                    <div class="info-stat">
                      <h6>Price:</h6>
                      <h4>$720/Month</h4>
                    </div>
                  </div>
                  <div class="col-lg-4 col-sm-4">
                    <div class="info-stat">
                      <h6>Schedules</h6>
                      <h4>$450/Meeting</h4>
                    </div>
                  </div> -->
                  <div class="col-lg-12">
                    <h2>Upright &amp; Raise Knowledge</h2>
                  </div>
                  <div class="col-lg-12">
                    <div class="main-green-button scroll-to-section">
                      <a href="#contact">ask questions</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                <img src="assets/images/banner-right-image.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div id="about" class="about-us section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="left-image wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
            <img src="assets/images/about-left-image.png" alt="">
          </div>
        </div>
        <div class="col-lg-8 align-self-center wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
      <c:set var="result" value="<%=r%>" />
							<c:if test="${not empty result}">
       <div id="contact" class="contact-us section">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.25s">
          <form id="contact" action="ServletUpHv" method="post" style="padding: 0px;">
            <div class="row">
              <div class="col-lg-6 offset-lg-3">
                <div class="section-heading">
                  <h6>Information</h6>
                 
                </div>
              </div>
              <div class="col-lg-12">
              	<c:forEach var="dto" items="${result}">
                <div class="row">
                  <div class="col-lg-12">
                    <fieldset>
                      <input  name="id" type="text" readonly="readonly" value="${dto.get(0)}" id="ID" placeholder="Name" autocomplete="on" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <input type="text" value="${dto.get(1)}" name="name" id="name" placeholder="Name" autocomplete="on" required>
                    </fieldset>
                  </div>
                  
                  <div class="col-lg-12">
                    <fieldset>
                      <input type="text" value="${dto.get(2)}" name="sdt" id="email"  placeholder="SDT" required="">
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <input type="date" name="nvh" id="name" value="${dto.get(3)}" placeholder="NVH" autocomplete="on" required>
                    </fieldset>
                  </div>
                  <div class="col-lg-12">
                    <fieldset>
                      <input type="text" name="idkh" value="${dto.get(4)}" id="name" placeholder="IDKH" autocomplete="on" required>
                    </fieldset>
                  </div>    
                  <div class="col-lg-12">
                    <fieldset>
                      <button type="submit" id="form-submit" class="main-button ">Update Now</button>
                    </fieldset>
                  </div>
                </div>
                </c:forEach>
              </div>
              <!-- <div class="col-lg-3">
                <div class="contact-info">
                  <ul>
                    <li>
                      <div class="icon">
                        <img src="assets/images/contact-icon-01.png" alt="email icon">
                      </div>
                      <a href="#">info@company.com</a>
                    </li>
                    <li>
                      <div class="icon">
                        <img src="assets/images/contact-icon-02.png" alt="phone">
                      </div>
                      <a href="#">+001-002-0034</a>
                    </li>
                    <li>
                      <div class="icon">
                        <img src="assets/images/contact-icon-03.png" alt="location">
                      </div>
                      <a href="#">26th Street, Digital Villa</a>
                    </li>
                  </ul>
                </div>
              </div> -->
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  </c:if>
							<c:if test="${empty result}">
								<h2>No record is matched!!!</h2>
							</c:if>
        </div>
      </div>
    </div>
  </div>

  

  <footer style="background-color: #aaebec;     margin-top: 100px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright Â© 2021 SEO Dream Co., Ltd. All Rights Reserved. 
          
          <br>Web Designed by <a rel="nofollow" href="https://templatemo.com" title="free CSS templates">NgocLy</a></p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/animation.js"></script>
  <script src="assets/js/imagesloaded.js"></script>
  <script src="assets/js/custom.js"></script>

</body>
</html>