<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="margin: 0;padding: 0; height: 100%;">
<body style="margin: 0; padding: 0; height: 100%;">
	<jsp:include page="bootstrapCDN.jsp"></jsp:include>

	<nav style="border-radius:1px;background-color:#007849"
		class="navbar navbar-expand-lg navbar-light"> <a
		class="navbar-brand" class="text-white" href="#">InfoObjects</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="ReadDataOfAllClients">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a  style="margin-left:1100px;" class="nav-link"
				href="index.jsp">Exit<span class="sr-only">(current)</span>
			</a></li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<div class="jumbotron text-center"
			style="background-color: #037584; height: 180px;">
			<div class="container">
				<h1 class="text-white">
					<i>InfoObjects Example Of Trust</i>
				</h1>
				<p class="text-white">Welcome To Client Management System</p>
			</div>
		</div>
</body>
</html>