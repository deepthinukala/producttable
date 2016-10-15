 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>
<h1><img src="C:\Users\lakshmideepthi\Desktop\my website\logo.png" alt="Test Image" width="200" height="200" style="margin:-60px 0px 0px 5px" align="left"></h1>
<div class>
  <h1 style="color:black;font-family:algerian;text-align:left;background-color:white">Gleznot World<br><font size="3">Add color to your life!</font>
  <img src="c:\Users\lakshmideepthi\Desktop\my website\insta.png" alt="Test Image" width="30" height="30" align="right">
  <img src="c:\Users\lakshmideepthi\Desktop\my website\twitter.png" alt="Test Image" width="35" height="30" align="right">
  <img src="c:\Users\lakshmideepthi\Desktop\my website\fb.png" alt="Test Image" width="35" height="30" align="right"></h1>
  
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a></div>
   
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Home"><span class="glyphicon glyphicon-user"></span> Home</a></li>
    <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> AboutUs</a></li>
     
    </ul>
  
  <ul class="nav navbar-nav navbar-left">
<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Contacts</a></li>
</ul>
</div></nav>
 
 <div class="container">
 <c:choose>
    <c:when test="${!empty SuccessMessage}">
     <td colspan="2">
      <div class="alert alert-success fade in">
       <a href="login" class="close" data-dismiss="alert" aria-label="close">&times;</a>${SuccessMessage}
      </div>
     </td>
    </c:when>
   </c:choose>
 
 
 
 <section id="content">
   <c:url var="addAction" value="adduser"></c:url>
   <form:form action="${addAction}" commandName="user"
    method="post">
    <h4>Registration</h4>
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="userid">userid</label>
      <div class="col-md-6">
      <form:input path="userid" type="text" placeholder="USERID"
       required="true" id="userid" name="userid" />
    </div></div>
   <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="username">username</label>
      <div class="col-md-6">
     <form:input path="username" type="text" placeholder="Username"
     pattern=".{5,10}" required="true" id="username" name="username"
     title="minimum length for username is 5" />
    </div></div>
    
<div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="password">Password</label>
      <div class="col-md-6">
     <form:input path="password" type="password" placeholder="Password" pattern=".{3,8}"
      required="true" id="password" name="password" title="minimum length for passsword is 3" />
    </div></div>
    
   <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="contact">contact</label>
      <div class="col-md-6">
     <form:input path="contact" type="text" placeholder="contact"
      pattern="^[789]\d{9}$" required="true" id="contact"
      name="contact" title="Enter valid contact number" />
    </div></div>
    
 <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="email">email</label>
      <div class="col-md-6">
     <form:input path="email" type="email" placeholder="Email"
      required="true" id="email" name="email" />
    </div></div>
    
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="address">address</label>
      <div class="col-md-6">
     <form:input path="address" type="address" placeholder="address"
      required="true" id="address" name="address" />
    </div></div>
    <div>
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
     <input type="submit" value="Register" /><a href="Login">Sign In</a>
    </div>

   </form:form>
   
  </section>
  
 </div>
 
</body>
</html>