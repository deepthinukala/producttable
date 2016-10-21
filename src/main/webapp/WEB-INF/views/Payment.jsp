 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link href="<c:url value="/resources/css/credit.css" />" rel="stylesheet">
</head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin-top: 0px;
    margin-bottom: 0px;
	margin-right: -60px;
    margin-left: 0px;
	  
}
  
  div.gap
  {
  margin:-25px 0px 0px 0px;
  }
  /*  body{background-image:url("http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=1769775 ");
    background-repeat: no-repeat;
    background-position: left bottom;}  */
  </style>
</head>
<body>
<h1><img src="C:\Users\lakshmideepthi\Desktop\my website\logo.png" alt="Test Image" width="200" height="200" style="margin:-60px 0px 0px 5px" align="left"></h1>
<div class>
  <h1 style="color:black;font-family:algerian;text-align:left;background-color:white">Gleznot World<br><font size="3">Add color to your life!</font>
  <img src="C:\Users\lakshmideepthi\Desktop\my website\insta.png" alt="Test Image" width="30" height="30" align="right">
  <img src="C:\Users\lakshmideepthi\Desktop\my website\twitter.png" alt="Test Image" width="35" height="30" align="right">
  <img src="C:\Users\lakshmideepthi\Desktop\my website\fb.png" alt="Test Image" width="35" height="30" align="right"></h1>
  
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a></div>
   
    <ul class="nav navbar-nav navbar-right">
 <li><a href="Home"><span class="glyphicon glyphicon-user"></span> Home</a></li>
<li><a href="loginname.html"><span class="glyphicon glyphicon-log-in"></span> About US</a></li>
<li><a href=<c:url value="perform_logout"/>>Logout</a></li>
     
    </ul>
  
 
</nav>
<div class="container">
  <div class="row col-xs-4"></div>
  <div class="col-xs-4">
     <!-- CREDIT CARD FORM STARTS HERE -->
    <div class="panel panel-primary">
     <div class="panel-heading">
   
      <div class="row">
       <h3 class="panel-title " style="padding-left: 20px">Payment Details</h3>
       
      </div>
     </div>
     <div class="panel-body">
<form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="method">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
        Cash On Delivery<input type="radio" name="method" value="cod"><br>
       Credit Card <input type="radio" name="method" value="card"><br>
       <!--  <input type="submit" value="Proceed"> -->
         <button class="btn btn-success btn-sm btn-block" type="submit">Proceed</button>  
        </form>
</body>
</html> 