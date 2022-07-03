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
</head>
<body>
	<%
	Dao dao = new Dao();
	String u = dao.layUser();
	Vector r = dao.list();
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
								class="nav-link current">
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
								style="color: #006699; font-size: 16px;">
								<%
								out.print(u);
								%>
							</font>
						</h2>
						<hr class="mb-5">
						<div class="row">

							<c:set var="result" value="<%=r%>" />
							<c:if test="${not empty result}">
								<div class="table100 ver3 m-b-110">
									<table data-vertable="ver3">
										<thead>
											<tr class="row100 head">
												<th class="column100 column1" data-column="column1" style="    background-color: #007cba;">ID_HocVien</th>
												<th class="column100 column2" data-column="column2"  style="    background-color: #007cba;">Ten
													Hoc Vien</th>
												<th class="column100 column3" data-column="column3"  style="    background-color: #007cba;">Ten
													Khoa Hoc</th>
												<th class="column100 column4" data-column="column4"  style="    background-color: #007cba;">Ngay
													Vao Hoc</th>
												<th class="column100 column5" data-column="column5"  style="    background-color: #007cba;">So
													Dien Thoai</th>
												<th class="column100 column6" data-column="column6"  style="    background-color: #007cba;">Ngay
													Thang Nop</th>
												<th class="column100 column7" data-column="column7"  style="    background-color: #007cba;">Thang</th>
												<th class="column100 column8" data-column="column8"  style="    background-color: #007cba;">So
													Tien</th>
												<th class="column100 column9" data-column="column9"  style="    background-color: #007cba;"></th>
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
														href="ServletImg?img=${dto.get(8)}" 
														class="read" >MC</a></td>



												</tr>

											</c:forEach>

										</tbody>


									</table>
								</div>
							</c:if>
							<c:if test="${empty result}">
								<h2>No record is matched!!!</h2>
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
