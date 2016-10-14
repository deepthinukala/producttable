<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	  <li><a href="Registration"><span class="glyphicon glyphicon-log-in"></span> Registration</a></li>
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
	
						
			<!-- <li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><span
					class="glyphicon glyphicon-th" align="right"></span></a>
				<ul class="dropdown-menu"> -->
	<div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">click here
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
				
					<li>
						<c:forEach items="${allInfo}" var="category">
				<a href="navproduct/${category.id }"><c:out value="${category.name}" /><span
								class="glyphicon glyphicon-menu-right"></span></a>
							<br>
						
					</c:forEach>
				</li>
				</ul>
	</div>
	</form>
	</nav>
  
 <div class="gap">
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	 <li data-target="#myCarousel" data-slide-to="4"></li>
	  
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\Users\lakshmideepthi\Desktop\my website\pic1.jpg" alt="Chania" width="560" height="345">
      </div>

      <div class="item">
        <img src="C:\Users\lakshmideepthi\Desktop\my website\pic2.jpg" alt="Chania" width="560" height="150">
      </div>
    
      <div class="item">
        <img src="c:\Users\lakshmideepthi\Desktop\my website\pic3.jpg" alt="Flower" width="560" height="150">
      </div>
	  <div class="item">
        <img src="C:\Users\lakshmideepthi\Desktop\my website\pic4.jpg" alt="Flower" width="560" height="150">
      </div>
      </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>
 <br>
 
	
   <c:forEach items="${allData}" var="product">
  <!--  <div class="row"> -->
     <div class="col-xs-3" class="thumbnail">
       
 <a href="ShowProduct/${product.id}" > <img height="250px" width="250px" alt="${product.id }"
 src="<c:url value="/resources/images/product/${product.id }.jpg"></c:url>"></a>
  <div class="desc">
         Product Id : <c:out value="${product.id}" /><br>
         Product Name : <c:out value="${product.name }"/>
   <c:url var="Addaction" value="addtocart/${product.id}"></c:url>
   <form:form action="${Addaction}" commandName="cart">
   <input type="submit" class="btn btn-primary" value="Add To Cart" />
   </form:form>
       </div>
       </div> 
      
      
	
		
	<div ng-view></div>

	 <script>
		$(document).ready(function() {
			$('.dropdown a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>  
	
	
	
	
</c:forEach>
	
<c:choose>
<c:when test="${Clickedshowproduct}">
<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
</c:when></c:choose>
<c:choose>
<c:when test="${Clickedcatproduct}">
<c:import url="/WEB-INF/views/catproducts.jsp"></c:import>
</c:when></c:choose>
<c:choose>
	<c:when test="${UserClickedCart}">
	<c:import url="/WEB-INF/views/Cart1.jsp"></c:import>
	</c:when></c:choose>
	<c:choose>
<c:when test="${UserClickedlogin}">
<c:import url="/WEB-INF/views/Login.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickedregister}">
<c:import url="/WEB-INF/views/Registration.jsp"></c:import>
</c:when>
</c:choose>  
  
<%-- <c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">
			</c:if>
			</c:when>
			</c:choose> --%>
<div class="container">
</body>
</html>
    