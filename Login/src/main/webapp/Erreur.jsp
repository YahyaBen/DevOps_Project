<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" type="text/css">
<jsp:useBean id="uUser" class="beans.user" scope="request"></jsp:useBean>
<meta charset="ISO-8859-1">
<title>Erreur</title>
</head>
<body>
	<div class="sidenav">
		<div class="login-main-text">
			<h2>DevOps</h2>
			<p>EHEI</p>
		</div>
	</div>
	<div class="main">
		<div class="col-md-8 col-sm-12">
			<div class="login-form">
				<div class="container">
					<div class="alert alert-danger">
						<strong> Erreur ! </strong> Veuillez vérifier votre :
					</div>
					<div class="alert alert-warning">
						<a class="text-danger"> Nom utilisateur <strong><jsp:getProperty name="uUser" property="nom" /></strong><br></a> <a class="text-danger">
							Votre <strong> mot de passe </strong>
						</a><br> <a class="text-danger"> Et La <strong>
								Captcha ! </strong></a><br>
					</div>
					<div class="alert alert-primary">
						<a href="<%=request.getContextPath()%>/index.jsp" type="text/css">
							<strong> Réessayer ! </strong>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
