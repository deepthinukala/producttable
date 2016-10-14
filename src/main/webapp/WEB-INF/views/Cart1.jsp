<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
<script type="text/javascript">
function checkAndSubmit()
{
document.formID.submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


 <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  margin:-35px 0px 0px 20px;
  }
  </style>
</head>
<body background="" ng-app="myApp">
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
      <li><a href="basic login.html"><span class="glyphicon glyphicon-user"></span> Home</a></li>
      <li><a href="loginname.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  <li><a href="registername"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> AboutUs</a></li>
     
    </ul>
  
  <ul class="nav navbar-nav navbar-left">
<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Contacts</a></li>
</ul>

	 <form class="navbar-form navbar-left" role="search">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
    <button type="submit" class="btn btn-default">Submit</button>
	</div>
	</form>
	</div>
	</nav>



<h2>Your Cart</h2>
${emptycart}





<table style="width:100%">
<tr>
<th>Product Name</th>
<th>price</th>

<th>Delete</th>
<th>quantity</th>
</tr>


<c:forEach items="${cartList}" var="cart">
<tr>
<td><c:out value="${cart.productname }"/></td>
<td><c:out value="${cart.price }"/></td>

<%-- <td>
 <c:url var="action" value="editcart/${cart.id}"></c:url>
		<form:form action="${action}" name="formID" modelAttribute="cart" method="post">
<form:select path="quantity" id="sel1" name="quantity" onchange="checkAndSubmit()">
<form:option value="1">1</form:option>
<form:option value="2">2</form:option>
<form:option value="3">3</form:option>
<form:option value="4">4</form:option>
<form:option value="5">5</form:option>
<form:option value="6">6</form:option>

<form:option value="7">7</form:option>
<form:option value="8">8</form:option>
<form:option value="9">9</form:option>
<form:option value="10">10</form:option>
</form:select>
</form:form>
 </td> --%>
<td><a href="delete/${cart.id}">delete</a></td>
<td><c:out value="${cart.quantity }"></c:out></td>

</c:forEach></table>

						
				<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total : Rs ${cartprice}</strong></td>
						</tr>
						<tr>
						<br>
							<td><a href="Home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
				
							<td colspan="2" class="hidden-xs"></td>
							<br>
			<form action="placeorder">
		<div  class="col-xs-3">
	<td><a href="checkoutFlow" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
</body>
</html>
<!--  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Your Cart</h1>
${emptycart}
<c:forEach items="${cartList }" var="cart">
Product:<c:out value="${cart.productname }"/><br>
Price:Rs.<c:out value="${cart.price }"/><br>Quantity
<a href="delete/${cart.id}">delete</a><br>
quantity:<c:out value="${cart.quantity }"></c:out></c:forEach>
<br>
<hr>
Total Price:-->