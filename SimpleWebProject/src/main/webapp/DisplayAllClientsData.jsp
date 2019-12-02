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
		<h2>List Of All Clients</h2>
	</center>
	<table style="background-color: #c0c0c0; border: 1px solid black;"
		class="table table-bordered table-sm">
		<thead>
			<tr>
				<th class="text-primary">Id</th>
				<th class="text-primary">First Name</th>
				<th class="text-primary">Last Name</th>
				<th class="text-primary">Mobile Number</th>
				<th class="text-primary">Read</th>
				<th class="text-primary">Edit</th>
				<th class="text-primary">Delete</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listOfClients}" var="client">
				<tr>
					<td>${client.uid}</td>
					<td>${client.fname}</td>
					<td>${client.lname}</td>
					<td>${client.mobileNumber}</td>
					<td><a
						href="ReadDataOfClient?id=${client.uid}&operationName=read">Read</a></td>
					<td><a
						href="ReadDataOfClient?id=${client.uid}&operationName=update">Edit</a></td>
					<td><a href="DeleteDataOfClient?id=${client.uid}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a
		href="FormPageForAddUpdateRead.jsp?operationName=addition&headingOfPage=Add New Client"><button
			class="button">Add Client</button></a>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>