<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.captcha.botdetect.web.servlet.Captcha"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="botDetect" uri="https://captcha.com/java/jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css" type="text/css">
<meta charset="ISO-8859-1">
<title>DevOps</title>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text">
            <h2> DevOps</h2>
            <p>EHEI</p>   
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="Login" method="post">
                  <div class="form-group">
                     <label>Utilisateur</label>
                     <input type="text" class="form-control" placeholder="Nom" name="pseudo" required>
                  </div>
                  <div class="form-group">
                     <label>Mot de passe </label>
                     <input type="password" class="form-control" placeholder="Password" name="password">
                  </div>
                  <botDetect:captcha id="TagDuCaptcha" userInputID="CodeDuCaptcha" /><br>
				  <input class="form-control"  id="CodeDuCaptcha" type="text" name="CodeDuCaptcha" /><br><br>
                  <button type="submit" value="Login" class="btn btn-black">Envoyer</button>
                  <button  type="reset" value="Reset" class="btn btn-black">Reset</button>
               </form>
            </div>
         </div>
      </div>
</body>
</html>
