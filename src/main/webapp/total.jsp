<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="connect.Dao"%>
<%@ page import="java.util.Vector"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upright</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap"
	rel="stylesheet">
<!-- https://fonts.google.com/specimen/Kumbh+Sans -->
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- https://fontawesome.com/-->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- https://dimsemenov.com/plugins/magnific-popup/ -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="slick/slick.min.css">
<!-- https://kenwheeler.github.io/slick/ -->
<link rel="stylesheet" href="slick/slick-theme.css">
<link rel="stylesheet" href="css/templatemo-upright.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--
    
TemplateMo 555 Upright

https://templatemo.com/tm-555-upright

-->
<style type="text/css">
.contact-us {
	margin-top: 0px;
	padding: 0px 0px;
	background-image: url(../images/contact-bg.jpg);
	background-repeat: no-repeat;
	background-position: center center;
	background-size: cover;
}

.contact-us .section-heading {
	text-align: center;
	margin-left: 20px;
	margin-right: 20px;
}

.contact-us .contact-info {
	padding: 0px 30px;
	border: 2px solid #eee;
}

.contact-us .contact-info ul li {
	text-align: center;
	display: block;
	margin-bottom: 30px;
}

.contact-us .contact-info ul li a {
	font-size: 15px;
	color: #afafaf;
	transition: all .5s;
}

.contact-us .contact-info ul li:hover a {
	color: #2a2a2a;
}

.contact-us .contact-info ul li:last-child {
	margin-bottom: 0px;
}

.contact-us .contact-info ul li .icon {
	margin-bottom: 10px;
}

.contact-us .contact-info ul li .icon img {
	max-width: 32px;
}

form#contact {
	position: relative;
	background-color: #fff;
	padding: 0px 80px;
	border-radius: 50px;
}

form#contact input {
	width: 100%;
	height: 46px;
	border-radius: 5px;
	background-color: transparent;
	border: 2px solid #efefef;
	outline: none;
	font-size: 15px;
	font-weight: 300;
	color: #2a2a2a;
	padding: 0px 20px;
	margin-bottom: 20px;
}

form#contact input::placeholder {
	color: #aaa;
}

form#contact textarea {
	width: 100%;
	min-width: 100%;
	max-width: 100%;
	max-height: 180px;
	min-height: 140px;
	height: 140px;
	border-radius: 5px;
	background-color: transparent;
	border: 2px solid #efefef;
	outline: none;
	font-size: 15px;
	font-weight: 300;
	color: #2a2a2a;
	padding: 15px 20px;
	margin-bottom: 20px;
}

form#contact textarea::placeholder {
	color: #aaa;
}

form#contact button {
	display: inline-block;
	background-color: #33ccc5;
	font-size: 15px;
	font-weight: 400;
	color: #fff;
	margin-top: 20px;
	text-transform: capitalize;
	padding: 12px 25px;
	border-radius: 23px;
	letter-spacing: 0.25px;
	border-bottom: 2px solid #4771cb !important;
	transition: all .3s;
	outline: none;
	border: none;
	text-align: center;
}

form#contact button:hover {
	background-color: #4771cb !important;
	color: #fff !important;
	border-bottom: 2px solid #33ccc5 !important;
}

/* 
---------------------------------------------
Footer Style
--------------------------------------------- 
*/
footer p {
	text-align: center;
	margin: 30px 0px;
}

footer p a {
	color: #33ccc5;
	transition: all .5s;
}

footer p a:hover {
	color: #4771cb;
}

/* 
---------------------------------------------
responsive
--------------------------------------------- 
*/
@media ( max-width : 1200px) {
	.header-area .main-nav .logo h4 {
		font-size: 24px;
	}
	.header-area .main-nav .logo h4 img {
		max-width: 25px;
		margin-left: 0px;
	}
	.header-area .main-nav .nav li:last-child {
		padding-left: 20px;
	}
}

@media ( max-width : 992px) {
	.header-area .main-nav .logo h4 {
		font-size: 20px;
	}
	.main-banner .left-content {
		margin-right: 0px;
	}
	.main-banner {
		text-align: center;
	}
	.main-banner:before {
		display: none;
	}
	.main-banner .right-image {
		margin: 30px auto 0px auto;
		text-align: center;
	}
	.features-item {
		margin-bottom: 45px;
	}
	.last-features-item, .last-skill-item {
		margin-bottom: 0px !important;
	}
	.skill-item {
		margin-bottom: 30px;
	}
	.service-item {
		text-align: center;
	}
	.service-item .icon {
		margin-top: 0px;
		margin-bottom: 30px;
	}
	.about-us .left-image {
		margin-right: 30px;
		margin-left: 30px;
		margin-bottom: 45px;
	}
	.our-portfolio .owl-nav {
		display: none !important;
	}
	.contact-info {
		margin-top: 60px;
	}
	form#contact {
		padding: 45px;
	}
}

@media ( max-width : 767px) {
	.header-area .main-nav .logo h4 {
		font-size: 30px;
	}
	.header-area .main-nav .logo h4 img {
		max-width: 30px;
		margin-left: 5px;
	}
	.main-banner .info-stat {
		margin-bottom: 15px;
	}
	.service-item {
		text-align: center;
		padding: 30px;
	}
	.service-item .icon {
		float: none;
		margin-right: 0px;
		margin-bottom: 15px;
	}
	.service-item .right-content {
		display: inline-block;
	}
	.our-portfolio .section-heading, .about-us .section-heading, .about-us .about-item,
		.about-us p, .about-us .main-green-button {
		text-align: center;
	}
	.our-services .section-heading {
		margin-left: 15px;
		margin-right: 15px;
	}
	.about-us .about-item {
		margin-top: 15px;
	}
	form#contact {
		padding: 30px;
	}
}

.section-headi h6 {
	font-size: 13px;
	color: #70a7c6;
}
</style>
<style type="text/css">
.our-services {
	padding-top: 20px;
}

.our-services .section-heading {
	text-align: center;
	margin-left: 75px;
	margin-right: 75px;
}

.our-services .container-fluid {
	padding: 0px 80px;
}

.service-item {
	padding: 60px 30px;
	border: 2px solid #f7f7f7;
	border-radius: 5px;
	transition: all .3s;
	margin-bottom: 30px;
}

.service-item:hover {
	background-color: #fff;
	border: 2px solid transparent;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.service-item .icon {
	margin-top: 10px;
	width: 80px;
	height: 80px;
	display: inline-block;
	text-align: center;
	line-height: 80px;
	background-color: #f7f7f7;
	border-radius: 50%;
}

.service-item .icon img {
	width: 38px;
	height: 38px;
}

.service-item h4 {
	font-size: 22px;
	font-weight: 700;
	color: #2a2a2a;
	margin-bottom: 15px;
}

/* 
---------------------------------------------
Portfolio
--------------------------------------------- 
*/
.our-portfolio {
	padding-top: 100px;
	overflow: hidden;
}

.our-portfolio .container-fluid {
	padding-right: 0px;
	padding-left: 0px;
}

.portfolio-item {
	margin-bottom: 30px;
	border-radius: 50px;
}

.portfolio-item:hover .thumb .hover-content {
	opacity: 1;
	visibility: visible;
}

.portfolio-item .thumb {
	position: relative;
	border-radius: 50px;
}

.portfolio-item .thumb img {
	border-radius: 50px;
	overflow: hidden;
}

.portfolio-item .thumb .hover-content {
	border-radius: 50px;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0;
	background: rgb(51, 204, 197);
	background: linear-gradient(105deg, rgba(51, 204, 197, 1) 0%,
		rgba(8, 141, 195, 1) 100%);
	width: 100%;
	height: 100%;
	opacity: 0;
	visibility: hidden;
	transition: all .5s;
}

.portfolio-item .thumb .hover-content .inner-content {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}

.portfolio-item .thumb .hover-content .inner-content h4 {
	font-size: 20px;
	font-weight: 700;
	color: #fff;
	margin-bottom: 10px;
}

.portfolio-item .thumb .hover-content .inner-content span {
	font-size: 15px;
	color: #fff;
}

.our-portfolio .owl-nav {
	display: inline-block !important;
	position: absolute;
	top: -117px;
	right: 15%;
	max-width: 1320px;
}

.our-portfolio .owl-nav .owl-next {
	margin-left: 10px;
}

.our-portfolio .owl-nav span {
	width: 46px;
	height: 46px;
	display: inline-block;
	text-align: center;
	line-height: 35px;
	font-size: 30px;
	border: 2px solid #eee;
	border-radius: 50%;
	color: #ddd;
	transition: all 0.5s;
}

.our-portfolio .owl-nav span:hover {
	color: #33ccc5;
	border-color: #33ccc5;
}

.section-heading {
	margin-bottom: 60px;
}

.section-heading h6 {
	font-size: 15px;
	font-weight: 700;
	color: #33ccc5;
	text-transform: uppercase;
	margin-bottom: 15px;
}

.section-heading h2 {
	font-size: 30px;
	text-transform: capitalize;
	color: #2a2a2a;
	font-weight: 800;
	position: relative;
	z-index: 2;
	line-height: 45px;
}

.section-heading h2 em {
	font-style: normal;
	color: #33ccc5;
}

.section-heading h2 span {
	color: #088ec3;
}
</style>
</head>
<body>
	<%
	Dao dao = new Dao();
	String u = dao.layUser();
	%>
	<div class="container-fluid">
		<div class="row">
			<!-- Leftside bar -->
			<div id="tm-sidebar" class="tm-sidebar">
				<nav class="tm-nav">
					<button class="navbar-toggler" type="button"
						aria-label="Toggle navigation">
						<i class="fas fa-bars"></i>
					</button>
					<div>
						<div class="tm-brand-box">
							<h1 class="tm-brand">Upright</h1>
						</div>
						<ul id="tm-main-nav">
							<li class="nav-item"><a href="home.jsp"
								class="nav-link ">
									<div class="triangle-right"></div> <i
									class="fas fa-home nav-icon"></i> trang chủ
							</a></li>
							<li class="nav-item"><a href="hvcnhp.jsp" class="nav-link">
									<div class="triangle-right"></div> <i
									class="fas fa-images nav-icon"></i> cập nhật
							</a></li>
							<li class="nav-item"><a href="add.jsp" class="nav-link">
									<div class="triangle-right"></div> <i
									class="fas fa-user-friends nav-icon"></i> thêm
							</a></li>
							<li class="nav-item"><a href="search.jsp" class="nav-link">
									<div class="triangle-right "></div> <i
									class="fas fa-envelope nav-icon"></i> tìm kiếm
							</a></li>
							<li class="nav-item"><a href="total.jsp"
								class="nav-link external current" target="_parent" rel="sponsored">
									<div class="triangle-right"></div> <i
									class="fas fa-external-link-alt nav-icon"></i> thống kê
							</a></li>
							<li class="nav-item"><a href="ServletLogOut"
								class="nav-link external" target="_parent" rel="sponsored">
									<div class="triangle-right"></div> <i
									class="fas fa-external-link-alt nav-icon"></i> đăng xuất
							</a></li>
						</ul>
					</div>
					<footer class="mb-3 tm-mt-100">
						Design: <a href="https://templatemo.com" target="_parent"
							rel="sponsored">TemplateMo</a>
					</footer>
				</nav>
			</div>

			<div class="tm-main">
				<!-- Home section -->
				<div class="tm-section-wra">
					<div class="tm-parallax" data-parallax="scroll"
						data-image-src="img/img-01.jpg"></div>
					<section id="home" class="tm-section ">
						<h2 class="tm-text-primary"
							style="font-size: 30px; font-family: 'Font Awesome 5 Free';">
							Welcome to Upright, <font
								style="color: #006699; font-size: 16px;"> <%
 out.print(u);
 %>
							</font>
						</h2>
						<hr class="mb-5">
						<div class="row">

							<div id="contact" class="contact-us section">
								<div class="container">
									<div class="row">
										<div class="col-lg-12 wow fadeInUp" data-wow-duration="0.5s"
											data-wow-delay="0.25s">
											<form id="contact" action="ServletTotal" method="post">
												<div class="row">
													<div class="col-lg-6 offset-lg-3"></div>
													<div class="col-lg-12">
														<div class="row">
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>From..</h6>
																	</div>
																	<input type="date" name="from" id="name"
																		placeholder="ID">
																</fieldset>
															</div>
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>..To</h6>
																	</div>
																	<input type="date" name="to" id="surname"
																		placeholder="Name">
																</fieldset>
															</div>

															<div class="col-lg-12">
																<fieldset style="margin-left: 400px;">
																	<button type="submit" id="form-submit"
																		class="main-button ">=</button>
																</fieldset>
															</div>
														</div>
													</div>

												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<c:set var="result" value="${requestScope.UU}" />
							<c:if test="${not empty result}">
								<div id="services" class="our-services section">
									<div class="container">
										<div class="row">
											<div class="col-lg-6 offset-lg-3"></div>
										</div>
									</div>
									<div class="container-fluid">
										<div class="row">
											<div class="col-lg-4">
												<div class="service-item wow bounceInUp"
													data-wow-duration="1s" data-wow-delay="0.3s">
													<div class="row">

														<div class="col-lg-12">
															<div class="right-content">
																<h4>Tất Cả</h4>
																<p style="font-size: 13px; margin-bottom: 5px;">Khóa
																	học</p>
																<h4
																	style="font-size: 19px; font-family: 'Font Awesome 5 Free'; color: #1978a5;">${requestScope.RRR}</h4>
															</div>
														</div>
													</div>
												</div>
											</div>
											<c:forEach var="dto" items="${result}">
												<div class="col-lg-4">
													<div class="service-item wow bounceInUp"
														data-wow-duration="1s" data-wow-delay="0.3s">
														<div class="row">

															<div class="col-lg-12">
																<div class="right-content">
																	<h4>${dto.get(0)}</h4>
																	<p style="font-size: 13px; margin-bottom: 5px;">${dto.get(1)}</p>
																	<h4
																		style="font-size: 19px; font-family: 'Font Awesome 5 Free'; color: #1978a5;">${dto.get(2)} VND</h4>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</c:if>


						</div>

					</section>

				</div>
			</div>

			<!-- Copyright -->
			<div class="tm-section-wrap tm-copyright row">
				<div class="col-12">
					<div class="text-right">Copyright 2020 Upright Company</div>
				</div>
			</div>
		</div>
		<!-- .tm-main -->
	</div>
	<!-- .row -->
	</div>
	<!-- .container-fluid -->

	<script src="js/ss.js"></script>
</body>
</html>
