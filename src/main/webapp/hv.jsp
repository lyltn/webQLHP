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
<!--
    
TemplateMo 555 Upright

https://templatemo.com/tm-555-upright

-->

</head>
<body>
	<%
	Dao dao = new Dao();
	String u = dao.layUser();
	Vector r1 = dao.hvcnhp();
	%>
	<section id="" class="tm-section ">
		<div style="width: 820px; margin-left: 310px;">
			<h2 class="tm-text-primary"
				style="font-size: 30px; font-family: 'Font Awesome 5 Free';">Welcome
				to Upright</h2>
			<hr class="mb-5">
		</div>

		<div class="row">
			<div id="wrapper">
				<h1>học viên chưa nộp học phí</h1>
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
									<td class="colbtn"><a href="ServletDelete?to=-${dto.get(0)}"
														class="read">Delete</a><a class="read update" 
														href="ServletUp?username=${dto.get(0)}"
														>Update</a><a class="read update"
														type="button" data-bs-toggle="modal"
									data-bs-target="#exampleModal" data-bs-whatever="${dto.get(6)}" style="width: 280px;"
														>Send Mail</a></td>

								</tr>


							</c:forEach>

						</tbody>
					</table>
				</c:if>

				
			</div>
			
	</section>


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
	<form action="ServletSendMail" method="post">
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
						<form>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">To:</label> <input
									type="text" name="to" class="form-control" id="recipient-name">
							</div>
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">Subject:</label>
								<input type="text" name="subject" class="form-control"
									id="recipient-name">
							</div>
							<div class="mb-3">
								<label for="message-text" class="col-form-label">Message:</label>
								<textarea class="form-control" name="message" id="message-text"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="reset" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Send
							message</button>
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

			modalTitle.textContent = 'New message to ' + recipient
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
