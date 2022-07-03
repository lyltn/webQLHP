<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upright</title>
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
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<style>
html, body {
	min-height: 100%;
}

body, div, form, input, select {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 14px;
	color: #666;
	line-height: 22px;
}

h1, h4 {
	margin: 15px 0 4px;
	font-weight: 400;
}

span {
	color: red;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 3px;
}

form {
	width: 100%;
	padding: 20px;
	background: #fff;
	box-shadow: 0 2px 5px #ccc;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 3px;
	vertical-align: middle;
}

input:hover, textarea:hover, select:hover {
	outline: none;
	border: 1px solid #095484;
}

.name input {
	margin-bottom: 10px;
}

select {
	padding: 7px 0;
	border-radius: 3px;
	border: 1px solid #ccc;
	background: #e6eef7;
}

option {
	background: #fff;
}

select, table {
	width: 100%;
}

.day-visited, .time-visited {
	position: relative;
}

.day-visited input, .time-visited input {
	width: calc(100% - 12px);
	background: #e6eef7;
}

input[type="date"]::-webkit-inner-spin-button {
	display: none;
}

input[type="time"]::-webkit-inner-spin-button {
	margin: 2px 22px 0 0;
}

.day-visited i, .time-visited i, input[type="date"]::-webkit-calendar-picker-indicator
	{
	position: absolute;
	top: 8px;
	font-size: 20px;
}

.day-visited i, .time-visited i {
	right: 5px;
	z-index: 1;
	color: #a9a9a9;
}

[type="date"]::-webkit-calendar-picker-indicator {
	right: 0;
	z-index: 2;
	opacity: 0;
}

.question-answer label {
	display: block;
	padding: 0 20px 10px 0;
}

.question-answer input {
	width: auto;
	margin-top: -2px;
}

th, td {
	width: 18%;
	padding: 15px 0;
	border-bottom: 1px solid #ccc;
	text-align: center;
	vertical-align: unset;
	line-height: 18px;
	font-weight: 400;
	word-break: break-all;
}

.first-col {
	width: 25%;
	text-align: left;
}

textarea {
	width: calc(100% - 6px);
}

.btn-block {
	margin-top: 20px;
	text-align: center;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #095484;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

button:hover {
	background-color: #0666a3;
}

@media ( min-width : 568px) {
	.name {
		display: flex;
		justify-content: space-between;
	}
	.name input {
		width: 47%;
		margin-bottom: 0;
	}
	th, td {
		word-break: keep-all;
	}
}
</style>
<!--
    
TemplateMo 555 Upright

https://templatemo.com/tm-555-upright


-->
</head>
<body>
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
							<li class="nav-item"><a href="add.jsp" class="nav-link current">
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
					<section id="" class="tm-section ">
						<h2 class="tm-text-primary"
							style="font-size: 30px; font-family: 'Font Awesome 5 Free';">Welcome
							to Upright</h2>
						<hr class="mb-5">
						<div class="testbox" style="width: 700px;margin-left: 220px;">
							<form action="ServletAdd" method="post">
								<h1>Add new students to the list</h1>
								<p>Please do not leave the fields with * character blank.
									Thank you!</p>

								<h4>
									Ma Hoc Vien<span>*</span>
								</h4>
								<input type="text" name="idhv" />
								<h4>
									Ten Hoc Vien<span>*</span>
								</h4>
								<input type="text" name="name" />
								<h4>
									So Dien Thoai<span>*</span>
								</h4>
								<input type="text" name="sdt" />
								
								<h4>
									Ten Phu Huynh<span>*</span>
								</h4>
								<input type="text" name="tenph" />
								<h4>
									SDT Phu Huynh<span>*</span>
								</h4>
								<input type="text" name="sdtph" />
								<h4>
									Gmail Phu Huynh<span>*</span>
								</h4>
								<input type="text" name="mailph" />
								<h4>
									Ngay Vao Hoc<span>*</span>
								</h4>
								<div class="day-visited">
									<input type="date" name="nvh" required /> <i
										class="fas fa-calendar-alt" style="margin-right: 30px;"></i>
								</div>
								<h4>
									Ma Khoa Hoc<span>*</span>
								</h4>
								<select name="idkh">
									<option class="disabled" disabled selected>*Please
										Select*</option>
									<option value="01-knm">01-knm</option>
									<option value="02-knm">02-knm</option>
									<option value="1A-ta">1A-ta</option>
									<option value="1B-ta">1B-ta</option>
									<option value="2A-ta">2A-ta</option>
									<option value="ITcb">ITcb</option>
								</select>



								<div class="btn-block">
									<button type="submit" href="/">Save</button>
								</div>
							</form>
						</div>

					</section>

				</div>
			</div>

			<!-- Copyright -->
			<div class="tm-section-wrap tm-copyright row">
				<div class="col-12">
					<div class="text-right">Copyright 2022 Upright Company</div>
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
