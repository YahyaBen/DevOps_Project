<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="uUser" class="beans.user" scope="request"></jsp:useBean>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" />
<meta charset="ISO-8859-1">
<title>Connection </title>
</head>
<body>
<div id="DIV">
<h1 id="Green">Connection Validée !!</h1> 
Hello Mr. <a id="Orange"><jsp:getProperty name="uUser" property="nom" /></a><br>
</div>
</body>
</html>