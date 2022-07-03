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
							<li class="nav-item"><a href="search.jsp" class="nav-link current">
									<div class="triangle-right "></div> <i
									class="fas fa-envelope nav-icon"></i> tìm kiếm
							</a></li>
							<li class="nav-item"><a href="total.jsp"
								class="nav-link external" target="_parent" rel="sponsored">
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
											<form id="contact" action="ServletSearch" method="post">
												<div class="row">
													<div class="col-lg-6 offset-lg-3"></div>
													<div class="col-lg-12">
														<div class="row">
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>ID Học Viên:</h6>
																	</div>
																	<input type="text" name="id" id="name"
																		placeholder="ID" >
																</fieldset>
															</div>
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>Tên Học Viên:</h6>
																	</div>
																	<input type="text" name="name" id="surname"
																		placeholder="Name" >
																</fieldset>
															</div>
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>Tên Khóa Học:</h6>
																	</div>
																	<input type="text" name="tenkh" id="email"
																		placeholder="Course name" >
																</fieldset>
															</div>
															<div class="col-lg-6">
																<fieldset>
																	<div class="section-headi">
																		<h6>Số Điện Thoại:</h6>
																	</div>
																	<input type="text" name="sdt" id="subject"
																		placeholder="
Phone number" >
																</fieldset>
															</div>
															<div class="col-lg-5">
																<fieldset>
																	<div class="section-headi">
																		<h6>Ngày Vào Học:</h6>
																	</div>
																	<input type="text" name="nvh" id="subject"
																		placeholder="Day admission" >
																</fieldset>
															</div>
															<div class="col-lg-5">
																<fieldset>
																	<div class="section-headi">
																		<h6>Ngày Nộp:</h6>
																	</div>
																	<input type="text" name="nn" id="subject"
																		placeholder="payment date" >
																</fieldset>
															</div>
															<div class="col-lg-2">
																<fieldset>
																	<div class="section-headi">
																		<h6>Tháng:</h6>
																	</div>
																	<input type="text" name="t" id="subject"
																		placeholder="Month" >
																</fieldset>
															</div>
															<div class="col-lg-12">
																<fieldset style="margin-left: 400px;">
																	<button type="submit" id="form-submit"
																		class="main-button ">Search</button>
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
								<div class="table100 ver3 m-b-110">
									<table data-vertable="ver3">
										<thead>
											<tr class="row100 head">
												<th class="column100 column1" data-column="column1">ID_HocVien</th>
												<th class="column100 column2" data-column="column2">Ten
													Hoc Vien</th>
												<th class="column100 column3" data-column="column3">Ten
													Khoa Hoc</th>
												<th class="column100 column4" data-column="column4">Ngay
													Vao Hoc</th>
												<th class="column100 column5" data-column="column5">So
													Dien Thoai</th>
												<th class="column100 column6" data-column="column6">Ngay
													Thang Nop</th>
												<th class="column100 column7" data-column="column7">Thang</th>
												<th class="column100 column8" data-column="column8">So
													Tien</th>
												<th class="column100 column9" data-column="column9"></th>
											</tr>
										</thead>
										<tbody>



											<c:forEach var="dto" items="${result}">
												<tr class="row100">
													<td class="column100 column1" data-column="column1">${dto.get(0)}</td>
													<td class="column100 column2" data-column="column2">${dto.get(1)}</td>
													<td class="column100 column3" data-column="column3">${dto.get(2)}</td>
													<td class="column100 column4" data-column="column4">${dto.get(3)}</td>
													<td class="column100 column5" data-column="column5">${dto.get(4)}</td>
													<td class="column100 column6" data-column="column6">${dto.get(5)}</td>
													<td class="column100 column7" data-column="column7">${dto.get(6)}</td>
													<td class="column100 column8" data-column="column8">${dto.get(7)}</td>
													<td class="column100 column9 colbtn" data-column="column9"><a
														href="ServletImg?img=${dto.get(8)}" class="read">MC</a></td>



												</tr>

											</c:forEach>

										</tbody>


									</table>
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
