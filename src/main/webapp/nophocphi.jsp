<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="connect.Dao"%>
<%@ page import="java.util.Vector"%>
<%@ page import="object.Tien"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">

<title>SEO Dream - Creative SEO HTML5 Template by TemplateMo</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-seo-dream.css">
<link rel="stylesheet" href="assets/css/animated.css">
<link rel="stylesheet" href="assets/css/owl.css">

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
 rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
 crossorigin="anonymous">
<!--

TemplateMo 563 SEO Dream

https://templatemo.com/tm-563-seo-dream

-->

</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<%
	Dao dao = new Dao();
	String u = dao.layUser();
	Vector r = dao.nopHocPhi(u);
	int a = dao.layTien(u);
	%>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky wow slideInDown"
		data-wow-duration="0.75s" data-wow-delay="0s">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="index.html" class="logo">
							<h4>
								Upright <img src="assets/images/logo-icon.png" alt="">
							</h4>
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
							<li class="scroll-to-section"><a href="index.jsp"
								>Home</a></li>
							<li class="scroll-to-section"><a href="xtt.jsp">Xem
									Thông Tin</a></li>
							<li class="scroll-to-section"><a href="nophocphi.jsp" class="active">Nộp
									Học Phí</a></li>
							<li class="scroll-to-section"><div class="main-blue-button">
									<a href="ServletLogOut">Log Out</a>
								</div></li>
						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->



<form id="contact" form action="ServletNHP"
						enctype="multipart/form-data" method="post">

	<div id="contact" class="contact-us section" style="width: 900px;
    margin-left: 230px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 wow fadeInUp" data-wow-duration="0.5s"
					data-wow-delay="0.25s">
					
						<div class="row">
							<div class="col-lg-6 offset-lg-3">
								<div class="section-heading">

									<h2>
										Fill Out The Form Below to <span>Pay </span><em>Tuition</em>
									</h2>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="row">
									<div class="section-headi">
										<h6>Nộp Tháng Thứ</h6>
									</div>
									<div class="col-lg-12">
										<fieldset>
											<input type="text" name="ntt" id="name" placeholder="Nộp cho tháng thứ"
												>
										</fieldset>
									</div>
									<div class="section-headi">
										<h6>Số Tiền</h6>
									</div>
									<div class="col-lg-12">
										<fieldset>
											<input type="text" name="sotien" id="surname"
												placeholder="Số Tiền" >
										</fieldset>
									</div>
									<div class="section-headi">
										<h6>Minh Chứng</h6>
									</div>
									<div class="col-lg-12">

										<fieldset>
											<input type="file"  required=""
												style="border: none;" name="ha">
										</fieldset>

									</div>

									<div class="col-lg-12">
										<fieldset>
											<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" 
											style="margin-top: 0px;"  class="main-button ">Update
												Now</button>
										</fieldset>
									</div>
	
								</div>
							</div>

						</div>
						
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<fmt:parseNumber var="parsedNumber" type="Integer"
                  parseLocale="en_US"
                  value="${param.sotien}" />
                  <c:set var="uuu" value="${param.sotien}" />
	
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>           
      <div class="modal-body">
               Học Phí Cần Nộp Là:
        <% out.print(a); %>
      </div>
      <div class="modal-footer">
        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
    </div>
  </div>
</div>
</form>
	<c:set var="result" value="<%=r%>" />

	<c:if test="${not empty result}">
		<div class="table100 ver3 m-b-110" style="margin: 0px 80px;">
			<table data-vertable="ver3">
				<thead>
					<tr class="row100 head">
						<th class="column100 column1" data-column="column1">ID_HocVien</th>
						<th class="column100 column2" data-column="column2">Ngày
							Tháng Nộp</th>
						<th class="column100 column3" data-column="column3">Nộp Tháng
							Thứ</th>
						<th class="column100 column4" data-column="column4">Số Tiền</th>
						<th class="column100 column5" data-column="column5"></th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${result}">
						<tr class="row100">
							<td class="column100 column1" data-column="column1">${dto.get(0)}</td>
							<td class="column100 column2" data-column="column2">${dto.get(1)}</td>
							<td class="column100 column3" data-column="column3">${dto.get(2)}</td>
							<td class="column100 column4" data-column="column4">${dto.get(3)}</td>

							<td class="column100 column5 colbtn" data-column="column5"><a
								class="read"
								href="ServletImg?img=${dto.get(4)}">MC</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</c:if>
							<c:if test="${empty result}">
								<h2>No record is matched!!!</h2
								>
							</c:if>
	<footer style="background-color: #aaebec;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright Â© 2021 SEO Dream Co., Ltd. All Rights Reserved. <br>Web
						Designed by <a rel="nofollow" href="https://templatemo.com"
							title="free CSS templates">NgocLy</a>
					</p>
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
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
		
	  <script type="text/javascript">
    var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
})
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
  crossorigin="anonymous"></script>
</body>
</html>