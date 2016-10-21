<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
  src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
<script type="text/javascript">
function checkAndSubmit()
{
document.formID.submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


  <style>
   div.gap
  {
  margin:-25px 0px 0px 0px;
  }
  table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
    text-align: left;
    padding: 8px;
}
/* tr:nth-child(even){background-color: #f2f2f2} */
th {
    background-color: black;
    color: white;
}
footer{
margin-top:50px;
}
tr:hover{background-color:#f5f5f5}
 th {background-color: black;
    color: white;
    }
    body{background-image:url("http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=1769775 ");
    background-repeat: no-repeat;
    background-position: left bottom;} 
    
  </style>
</head>
<body background="" ng-app="myApp">

<h1><img src="C:\Users\lakshmideepthi\Desktop\my website\logo.png" alt="Test Image" width="200" height="200" style="margin:-60px 0px 0px 5px" align="left"></h1>
    <div class>
    <h1 style="color:black;font-family:algerian;text-align:left;background-color:white">Gleznot World<br><font size="3">Add color to your life!</font>
    <img src="C:\Users\lakshmideepthi\Desktop\my website\insta.png" alt="Test Image" width="30" height="30" align="right">
    <img src="C:\Users\lakshmideepthi\Desktop\my website\twitter.png" alt="Test Image" width="35" height="30" align="right">
    <img src="C:\Users\lakshmideepthi\Desktop\my website\fb.png" alt="Test Image" width="35" height="30" align="right"></h1>
    </div>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header"></div>
     <ul class="nav navbar-nav navbar-right">
 <li><a href="Home"><span class="glyphicon glyphicon-user"></span> Home</a></li>
<li><a href=<c:url value="perform_logout"/>>Logout</a></li>
     
    <%-- </ul>
     <ul class="nav navbar-nav navbar-left">
     <li><a href="contact"><span class="glyphicon glyphicon-log-in"></span> Contacts</a></li>
     </ul>
	 <form class="navbar-form navbar-left" role="search">
       <div class="form-group">
       <input type="text" class="form-control" placeholder="Search">
       <button type="submit" class="btn btn-default">Submit</button>
	   </div>
	 </form> --%>
</nav>

<div class="panel-body">

       <!-- <div class="row">
        <div class="col-xs-5">
         <label class="form-control input-sm">Product Details</label>
        </div>
        
        <div class="col-xs-2 text-right">
         <label class="form-control input-sm"> Total Price</label>
        </div>
        <div class="col-xs-4">
         <div class="col-xs-6">
          <label class="form-control input-sm">Quantity</label>
         </div>
         <div class="col-xs-6">
          <label class="form-control input-sm">Update</label>
         </div>
        </div>
        <div class="col-xs-1">
         <a href="#" class="form-control input-sm"><span
          class="glyphicon glyphicon-trash"> </span></a>
        </div>
       </div> -->
       
<table>
<tr>
<th>Product </th>
<th> Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Delete</th>
</tr>
</table> 
       <hr>
       
       <c:if test="${!empty CartList}">
        <c:forEach items="${CartList}" var="cart">
         <div class="row" >
          <div class="col-xs-4">
          <div class="col-xs-5">
          <a href="ShowProduct/${cart.id}">
           <img height="60px" width="60px"  alt="${cart.productid}"
           src="<c:url value="/resources/images/product/${cart.productid}.jpg"></c:url>">
           </a>
          </div>
          <div class="col-xs-6" style="padding-top: 22px" >
           <label  class="form-control input-sm">${cart.productname}</label>
          </div>
          </div>
          <%-- <div class="col-xs-2">
        <input type="text" class="form-control input-sm" value="${cart.quantity}">
      </div> --%>
          <div class="col-xs-2" style="padding-top: 22px">
           <label class="form-control input-sm">${cart.price}</label>
          </div>
          
          <div class="col-xs-2" style="padding-top: 22px">
           <label class="form-control input-sm">${cart.quantity}</label>
          </div>

          <%-- <div class="col-xs-4" style="padding-top: 22px">
           <form action="edit/${cart.id}">
            <div class="col-xs-6">
             <input type="text" class="form-control input-sm"
              value="${cart.quantity}" name="quantity">
            </div>
            <div class="col-xs-6"  >
             <button type="submit"
              class="btn btn-default btn-sm btn-block">Edit cart</button>
            </div>
            </form>
          </div> --%>
          <div class="col-xs-2" style="padding-top: 22px">
           <a href="delete/${cart.id}" class="form-control input-sm">Delete</a>
          </div>
         </div>
         </c:forEach>
         </c:if>
         </div>
         <div class="panel-footer">
       <div class="row text-center">
        <div class="col-xs-3">
         <a href="Home" class="btn btn-warning btn-sm btn-block">Continue Shopping</a>
        </div>
        <c:if test="${empty EmptyCart}">
        <div class="col-xs-6">
         <h4 class="text-right">${CartPrice}</h4>
        </div>
         <form action="placeorder">

          <div class="col-xs-3">
           <a href="checkoutFlow" type="submit" class="btn btn-success btn-block">
            Checkout</a>
          </div>

         </form>
        </c:if>
        </div>
        </div>
        </body>
<%@include file="Common-Footer.jsp"%>
         </html>