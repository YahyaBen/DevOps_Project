<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" type="text/css">
<jsp:useBean id="uUser" class="beans.user" scope="request"></jsp:useBean>
<meta charset="ISO-8859-1">
<title>Erreur</title>
</head>
<body>
<div id="DIV" >
<h1 id="Red">Connection Eronée !!</h1> 
Veuillez verifier votre Nom utilisateur : <h1 id="Orange"> <jsp:getProperty name="uUser" property="nom" /><br></h1>
 Ou bien votre <h1 id="Orange"> mot de passe !</h1> et n'oublie pas <h1 id="Red"> Captcha !</h1>
 </div>
</body>
</html>