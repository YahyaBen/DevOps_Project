<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" type="text/css">
<jsp:useBean id="uUser" class="beans.user" scope="request"></jsp:useBean>
<meta charset="ISO-8859-1">
<title>Connection</title>
</head>
<body>
	<div class="sidenav">
		<div class="login-main-text">
			<h2>DevOps</h2>
			<p>EHEI</p>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">
			<div class="login-form">
				<div class="container">
					<div class="alert alert-success">
						<strong> Success!!! </strong>
					</div>
					<div class="alert alert-primary">
						<strong>Bonjour Mr. <jsp:getProperty name="uUser" property="nom" /><br>
						</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>