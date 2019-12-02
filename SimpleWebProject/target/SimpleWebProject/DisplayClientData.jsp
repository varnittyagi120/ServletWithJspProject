<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="bootstrapCDN.jsp"></jsp:include>
<link href="mystyle.css" rel="stylesheet" type="text/css">
</head>
<body style="background-color: #f1f1f1;">
	<jsp:include page="header.jsp"></jsp:include>
	<center>
		<h2>Client Data</h2>
	</center>
	<div class="container">
		<form class="was-validated" action="update2.php?id=<?php echo $id1 ?>"
			method="post">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-3">
					<label class="text-success">First Name :</label> <br> <input
						type="text" name="fname" value="${valueOfFirstName}"
						placeholder="First Name" class="form-control" readonly> <span
						class="error"></span>
				</div>
				<div class="col-md-3">
					<label class="text-success">Last Name :</label> <br> <input
						type="text" name="lname" class="form-control"
						value="${valueOfLastName}" placeholder="Last Name" readonly>

					<span class="error"></span>
				</div>
				<div class="col-md-3"></div>

			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Mobile Number :</label> <input
						type="text" name="mobileNumber" placeholder="91+"
						class="form-control" value="${valueOfMobileNumber}" readonly>
					<span class="error"></span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Email :</label> <input type="text"
						name="email" placeholder="example@gmail.com" class="form-control"
						value="${valueOfEmail}" readonly> <span class="error"></span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">BillAmount :</label> <input type="text"
						name="billAmount" placeholder="" class="form-control"
						value="${valueOfBillAmount}" readonly> <span class="error"></span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Tenure :</label> <input type="text"
						name="tenure" placeholder="" class="form-control"
						value="${valueOfTenure}" readonly> <span class="error"></span>
				</div>
				<div class="col-md-3"></div>
			</div>
		</form>
	</div>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>