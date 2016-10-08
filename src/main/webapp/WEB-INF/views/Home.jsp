<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin-top: 0px;
    margin-bottom: 0px;
	margin-right: 150px;
    margin-left: 150px;
	  
}
  
  div.gap
  {
  margin:-35px 0px 0px 20px;
  }
  </style>
</head>
<body>
<h1><img src="logo.png" alt="Test Image" width="200" height="200" style="margin:-60px 0px 0px 5px" align="left"></h1>
<div class>
  <h1 style="color:black;font-family:algerian;text-align:left;background-color:white">Gleznot World<br><font size="3">Add color to your life!</font>
  <img src="insta.png" alt="Test Image" width="30" height="30" align="right">
  <img src="twitter.png" alt="Test Image" width="35" height="30" align="right">
  <img src="fb.png" alt="Test Image" width="35" height="30" align="right"></h1>
  
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
	<div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">click here
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Wall Paints</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Nail Paints</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Art paints</a></li> 
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
        <img src="pic1.jpg" alt="Chania" width="560" height="345">
      </div>

      <div class="item">
        <img src="pic2.jpg" alt="Chania" width="560" height="150">
      </div>
    
      <div class="item">
        <img src="pic3.jpg" alt="Flower" width="560" height="150">
      </div>
	  <div class="item">
        <img src="pic4.jpg" alt="Flower" width="560" height="150">
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
 
	 <c:forEach items="${allProduct}" var="product">
	 <div class="responsive">
	 <div class="img">
 		
 		
 		  <!-- <div class="thumbnail">-->
 			 <div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="200px"
							width="200px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>
 	       
 	        <div class="desc">
         	<c:out value="${product.name}" />
         	<sec:authorize access="isAuthenticated()">
			<c:url var="action" value="addtocart/${product.id}"></c:url>
			<form:form action="${action}" commandName="cart">
			<input type="submit" class="btn btn-primary" value="Add To Cart" />
			
			</form:form>
			</sec:authorize>
			</div>
			</div>
			</div>
			</div>
			</c:forEach>
			<div ng-view></div>
			$IndividualProduct

</body>
</html>
    