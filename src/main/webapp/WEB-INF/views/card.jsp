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
        <input type="hidden" name="_eventId" value="continue">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="cardNumber">Card Number</label>
          <div class="form-group">
           <input type="text" class="form-control input-sm" name="cardNumber" 
              placeholder="Valid Card Number" pattern="^[123456789]\d{15}$"
            title="Enter valid 16 digit number"
            required  />  
          </div>
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-7 col-md-7">
         <div class="form-group">
          <label for="cardExpiry"><span class="hidden-xs">Expiration</span><span
           class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
           class="form-control input-sm" name="cardExpiry" placeholder="MM / YY"
            required />
         </div>
        </div>
        <div class="col-xs-5 col-md-5 pull-right">
         <div class="form-group">
          <label for="cardCVC">CVV Code</label> <input type="text" pattern="^[123456789]\d{2}$"  size="3"
           class="form-control input-sm" name="cardCVC" placeholder="CVV"
           required />
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="name">Name</label> <input type="text"
           class="form-control input-sm" name="name" />
         </div>
        </div>
       </div> 
       
       <div class="row">
        <div class="col-xs-6 col-md-6">
        
         <button class="btn btn-success btn-sm btn-block" type="submit">Continue</button>  
        
        </div>
       
         <!--  <input type="submit" value="Continue"> -->
        </form>
        
       <form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="cancel">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
        <div class="col-xs-6 col-md-6">
        
         <button class="btn btn-success btn-sm btn-block" type="submit">Cancel</button>  
        
        </div>
       
        </form>
        </div>
     </div>
    </div>
    <!-- CREDIT CARD FORM ENDS HERE -->
</div>
     
</div> 

       
 </body>
<%@include file="Common-Footer.jsp"%>
</html> 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>All products</h1>
<form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="continue">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />

       Enter Card Number <input type="text" name="cardnumber"><br>
       Enter Expiry Date<input type="text" name="date"><br>
       Enter cvv <input type="text" name="cvv"><br>
        <input type="submit" value="Continue">
        </form>

<form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="cancel">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
        <input type="submit" value="Cancel">
        </form>
</body>
</html> --%>