<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="connect.Dao"%>
<%@ page import="java.util.Vector"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
</head>
<body>
<div style="margin: 50px 300px;">


		<form action="ServletUpdate" method="post">
		<c:set var="result" value="${requestScope.a}" />
								<c:if test="${not empty result}">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
							
						<div class="modal-body">
						<c:forEach var="dto" items="${result}">
							<div class="form-group">
								<label for="exampleInputEmail1">Id_HocVien</label> <input
									type="text" readonly="readonly" value="${dto.get(0)}"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="id">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Tên Học Viên</label> <input
									type="text" value="${dto.get(1)}" class="form-control"
									id="exampleInputPassword1" name="name">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Số Điện Thoại</label> <input
									type="text" value="${dto.get(2)}" class="form-control"
									id="exampleInputPassword1" name="sdt">
							</div>
							<div class="form-group">
							
								<label for="exampleInputPassword1">Ngày Vào Học, <font style="font-size: 10px">${dto.get(3)}</font></label> <input
									type="date" value="${dto.get(3)}"  class="form-control"
									id="exampleInputPassword1" name="nvh">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Id_KhoaHoc</label> <select
									name="idkh" value="${dto.get(4)}" class="form-control" id="exampleInputPassword1">
									<option class="disabled"  value="${dto.get(4)}">*${dto.get(4)}*</option>
									<option value="01-knm">01-knm</option>
									<option value="02-knm">02-knm</option>
									<option value="1A-ta">1A-ta</option>
									<option value="1B-ta">1B-ta</option>
									<option value="2A-ta">2A-ta</option>
									<option value="ITcb">ITcb</option>
								</select>
							</div>
							</c:forEach>
						</div>
						<div class="modal-footer">
							<button type="reset" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save
								changes</button>
						</div>
				</c:if>
		</form>
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
</body>
</html>