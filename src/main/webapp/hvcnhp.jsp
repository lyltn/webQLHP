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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
	<!-- MDB -->

<!--
    
TemplateMo 555 Upright

https://templatemo.com/tm-555-upright

-->

</head>
<body>
	<%
	Dao dao = new Dao();
	String u = dao.layUser();
	Vector r1 = dao.listHV();
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
								class="nav-link">
									<div class="triangle-right"></div> <i
									class="fas fa-home nav-icon"></i> trang chủ
							</a></li>
							<li class="nav-item"><a href="hvcnhp.jsp" class="nav-link current">
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
				<div class="tm-section-wrap ">
					<div class="tm-parallax">
						<img src="img/img-01.jpg" height="880px">
					</div>
					<section id="" class="tm-section ">
						<h2 class="tm-text-primary"
							style="font-size: 30px; font-family: 'Font Awesome 5 Free';">Welcome
							to Upright</h2>
						<hr class="mb-5">
						<div class="row">
							<div id="wrapper">
								<h1>student list</h1>
								<c:set var="result" value="<%=r1%>" />
								<c:if test="${not empty result}">
									<table id="keywords" cellspacing="0" cellpadding="0">
										<thead>
											<tr>
												<th class="rrr"><span>ID_Hocvien</span></th>
												<th class="col2"><span>Ten Hoc Vien</span></th>
												<th class="col3"><span>sdt</span></th>
												<th class="col4"><span>Ngay Vao Hoc</span></th>
												<th class="col5"><span>ID_KhoaHoc</span></th>
												<th><span></span></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="dto" items="${result}">
												<tr>
													<td class="lalign rrr">${dto.get(0)}</td>
													<td class="col2">${dto.get(1)}</td>
													<td class="col3">${dto.get(2)}</td>
													<td class="col4">${dto.get(3)}</td>
													<td class="col5">${dto.get(4)}</td>
													<td class="colbtn"><a data-bs-toggle="modal"
									data-bs-target="#exampleModal" data-bs-whatever="${dto.get(5)}-${dto.get(0)}"
														class="read">Delete</a><a class="read update" 
														href="ServletUp?username=${dto.get(0)}"
														>Update</a></td>
													
												</tr>
											
									
													</c:forEach>

										</tbody>
									</table>
													</c:if>
								
								
							</div>
							<a class="read_mor" href="hv.jsp" style="margin: 50px 350px;" >HVCNHP<i
								class="fa fa-arrow-right" aria-hidden="true"></i></a>
					</section>

				</div>
			</div>

			<script src="js/ss.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
				integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
				crossorigin="anonymous"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
				crossorigin="anonymous"></script>
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
	<form action="ServletDelete" method="get">
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">New message</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">bạn có chắc muốn xóa</label> <input
									type="text" name="to" class="form-control" id="recipient-name">
							</div>
						
						
					</div>
					<div class="modal-footer">
						<button type="reset" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Delete</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- .container-fluid -->
	<script type="text/javascript">
		var exampleModal = document.getElementById('exampleModal')
		exampleModal.addEventListener('show.bs.modal', function(event) {
			// Button that triggered the modal
			var button = event.relatedTarget
			// Extract info from data-bs-* attributes
			var recipient = button.getAttribute('data-bs-whatever')
			// If necessary, you could initiate an AJAX request here
			// and then do the updating in a callback.
			//
			// Update the modal's content.
			var modalTitle = exampleModal.querySelector('.modal-title')
			var modalBodyInput = exampleModal
					.querySelector('.modal-body input')

			modalTitle.textContent = 'Số Tiền Học Viên Đã Nộp(sotien-mahv) ' 
			modalBodyInput.value = recipient
		})
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')

		myModal.addEventListener('shown.bs.modal', function() {
			myInput.focus()
		})
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/ss.js"></script>
</body>
</html>
