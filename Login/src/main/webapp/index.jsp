<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.captcha.botdetect.web.servlet.Captcha"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="botDetect" uri="https://captcha.com/java/jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css"
	type="text/css">
<title>DevOps</title>
</head>
<body>
	<h1>Informations client</h1>
	<form action="Login" method="post">
		<div id="DIV">
			<label for="Nom">Pseudo *</label> <input type="text" name="pseudo" required><br><br> 
			<label for="Prenom">Password </label> <input type="password" name="password"><br><br>
			<botDetect:captcha id="TagDuCaptcha" userInputID="CodeDuCaptcha" /><br>
			<input id="CodeDuCaptcha" type="text" name="CodeDuCaptcha" /><br><br>
			<button type="submit" value="Envoyer">Envoyer</button>
			<button type="reset" value="Reset">Reset</button>
		</div>
	</form>
</body>
</html>