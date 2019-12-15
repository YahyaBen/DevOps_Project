<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>DevOps</title>
</head>
<body>
	<h1>Informations client</h1>
	<form action="Login" method="post">
		<div id="DIV">
			<label for="Nom">Pseudo *</label> 
			<input type="text" name="pseudo" required><br> <label for="Prenom">Password </label> 
			<input type="password" name="password"><br>
			<button type="submit" value="Envoyer">Envoyer</button>
			<button type="reset" value="Reset">Reset</button>
		</div>
	</form>
</body>
</html>