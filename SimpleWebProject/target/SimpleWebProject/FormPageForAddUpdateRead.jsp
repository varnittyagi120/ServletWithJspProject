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
	<%
		if (request.getParameter("operationName").equals("addition")) {
			request.setAttribute("headingOfPage", request.getParameter("headingOfPage"));
		}
	%>
	<center>
		<h2>${headingOfPage}</h2>
	</center>
	<%
		if (request.getParameter("operationName").equals("read")) {
			request.setAttribute("readonly", "readonly");
			request.setAttribute("hidden", "hidden");
		} else {
			request.setAttribute("readonly", "");
			request.setAttribute("hidden", "");
		}
	%>
	<div class="container">
		<form class="was-validated" action="validateClientData" method="post">
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<input type="text" name="operationName" class="form-control"
						value="<%=request.getParameter("operationName")%>" hidden>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<input type="text" name="id" class="form-control"
						value="${valueOfId}" hidden>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-3">
					<label class="text-success">First Name :<br>(enter
						Only Characters)
					</label> <br>
					<!--                    <input type="text" name="fname" -->
					<%-- 				   value="${valueOfFirstName}" placeholder="First Name" class="form-control"> --%>

					<input type="text" name="fname" value="${valueOfFirstName}"
						placeholder="First Name" class="form-control" ${readonly}
						pattern="^[a-zA-Z\\\\s]*$" aria-required="true" required>
					<span class="text-danger">${errorInFirstName}</span>
				</div>
				<div class="col-md-3">
					<label class="text-success">Last Name :<br>(enter Only
						Characters)
					</label> <br>
					<!-- 					<input type="text" name="lname"   -->
					<%-- 				     class="form-control" value="${valueOfLastName}" placeholder="Last Name"> --%>

					<input type="text" name="lname" class="form-control" ${readonly}
						value="${valueOfLastName}" placeholder="Last Name"
						pattern="^[a-zA-Z\\\\s]*$" aria-required="true"
						required="required"> <span class="text-danger">${errorInLastName}</span>
				</div>
				<div class="col-md-3"></div>

			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Mobile Number :<br>(enter
						10 digit mobile number with correct format)
					</label><br>
					<!-- 					<input type="text" name="mobileNumber"  -->
					<%-- 					placeholder="91+" class="form-control" value="${valueOfMobileNumber}"> --%>

					<input type="text" name="mobileNumber" placeholder="91+"
						pattern="(0/91)?[6-9][0-9]{9}" aria-required="true"
						required="required" class="form-control" ${readonly}
						value="${valueOfMobileNumber}"> <span class="text-danger">${errorInMobileNumber}</span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Email :</label>
					<!-- 					 <input type="text" name="email"   -->
					<%-- 					 placeholder="example@gmail.com" class="form-control" value="${valueOfEmail}"> --%>

					<input type="text" name="email" placeholder="example@gmail.com"
						class="form-control" value="${valueOfEmail}" ${readonly}
						pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$"
						aria-required="true" required="required"> <span
						class="text-danger">${errorInEmail}</span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">BillAmount :<br>(must be
						in numeric format)
					</label><br>
					<!-- 					    <input type="text" name="billAmount"  -->
					<%-- 					    placeholder="" class="form-control" value="${valueOfBillAmount}"> --%>

					<input type="text" name="billAmount" placeholder=""
						class="form-control" value="${valueOfBillAmount}" ${readonly}
						pattern="^\d*(\.\d+)?$" aria-required="true" required="required">
					<span class="text-danger">${errorInBillAmount}</span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<div class="row" class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-6" class="form-group">
					<label class="text-success">Tenure :<br>(must lie
						between 0 to 14 in integer format)
					</label>
					<!-- 		    <input type="text" name="tenure"  -->
					<%-- 	        placeholder="" class="form-control" value="${valueOfTenure}"> --%>

					<input type="text" name="tenure" placeholder=""
						class="form-control" value="${valueOfTenure}" ${readonly}
						pattern="^[0-9]|[0-1][0-4]$"> <span class="text-danger">${errorInTenure}</span>
				</div>
				<div class="col-md-3"></div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<button type="submit" class="btn btn-primary btn-sm" name="submit"
						${hidden} value="submit">Submit</button>
				</div>
				<div class="col-md-3"></div>

			</div>
		</form>
	</div>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>