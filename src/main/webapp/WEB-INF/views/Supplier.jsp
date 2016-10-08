<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
    
  <style>
   div.gap
  {
  margin:-25px 0px 0px 0px;
  }
  table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
 border: 1px solid grey;
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover{background-color:#f5f5f5}
 th {background-color: black;
    color: white;
    }
     body{background-image:url("http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=1769775 ");
    background-repeat: no-repeat;
    background-position: left bottom;}  
  </Style>
  <script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'suppliergson'
			}).success(function(data, status, headers, config) {
				$scope.suppliers = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
 
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
    <div class="navbar-header"></div>
    <!-- <ul class="nav navbar-nav navbar-right">
      <li><a href="basic login.html"><span class="glyphicon glyphicon-user"></span> Home</a></li>
      <li><a href="loginname.html"><span class="glyphicon glyphicon-log-in"></span> About US</a></li>
	  <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
     </ul> -->
     <ul class="nav navbar-nav navbar-left">
       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Contacts</a></li>
     </ul>
	 <form class="navbar-form navbar-left" role="search">
       <div class="form-group">
       <input type="text" class="form-control" placeholder="Search">
       <button type="submit" class="btn btn-default">Submit</button>
	   </div>
	 </form>
</nav>
<div class="gap">
 <nav class="navbar navbar-default"style="background-color:orange">
    <div class="container-fluid">
    <div class="navbar-header"></div>
    <ul class="nav navbar-nav navbar-right">
       <li><h4>Welcome Deepthi! </h4></li>
    </ul>
    <ul class="nav navbar-nav navbar-left">
       <li><a href="Product"><span class="glyphicon glyphicon-log-in"></span> product</a></li>
       <li><a href="Category"><span class="glyphicon glyphicon-log-in"></span> category</a></li>
       <li><a href="Supplier"><span class="glyphicon glyphicon-log-in"></span> supplier</a></li>
    </ul>
 </nav>
  
<c:url var="addAction" value="addsupplier" ></c:url>
<form:form action="${addAction}" modelAttribute="supplier" name="btn-add">
   <h3>
                    <c:if test="$(supplier.id==0}">
		       Add New Item
	            </c:if>
	            <c:if test="${!empty supplier.id}">
		       Update Item for Id: <c:out value="${supplier.id}"/>
		     <%--  <form:hidden path="id"/> --%>
	            </c:if>
         </h3>
	  <div class="container">
 <div class="clearfix"></div>
	<div class="Product_Content tab-content">
            <div id="supplier" class="tab-pane active"> 
            <form class="form-horizontal">
 
  <br>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
 <c:if test="${supplier.id!=0}">
      <label class="col-md-4 form-group"  for="id">Id</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="supplier id" class="form-control name" path="id"/>
      </div>
     </c:if>
         </div>
    
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name">Name</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="supplier name" class="form-control name" path="name"/>
      </div>
    </div>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="address">Address</label>
      <div class="col-md-6 ">
        <form:input type="text" placeholder="address" class="form-control name" path="address"/>
      </div>
    </div>


    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <div class="col-md-6 ">
    	        <c:if test="${supplier.id==0}">
			      <input type="submit" value="Add" class="btn btn-primary"> 
	         </c:if>
	         <c:if test="${supplier.id!=0}">
			      <input type="submit" value="Update" class="btn btn-primary"> 
	         </c:if>
	</div>
    </div>
    </form>
    </div>
    </div>
    </div>
    <div class="container" data-ng-app="myApp"
				data-ng-controller="MyController" data-ng-init="getDataFromServer()"
				style="overflow: auto; height: 400px; width: 70%">
				<form>
					<input
						class="w3-input w3-animate-input w3-border w3-round w3-small"
						data-ng-model="search" type="text" placeholder=" Search Supplier"
						style="width: 20%">
				</form>
				<br>
    
    
    <div align="center">
	  <table>   
			<tr>
			 <th> ID </th>
		        <th> Name </th>
				 <th> Address</th>
				 
				 <th colspan="2"> Action </th>
	      	</tr>
    	      <%-- <c:forEach var="obj" items="${allSupplier}"> --%>
		      <tr data-ng-repeat="supplier in suppliers | orderBy:sortType:sortReverse | filter:search">>
		                 <td>{{supplier.id}} </td>
		                 <td>{{supplier.name}}</td>
				 		<td> {{supplier.address}} </td>
				
				
				 <td> <a href="deleteBysupplier/{{supplier.id}}">Delete </a> |
				     <a href="ItemBysupplier/{{supplier.id}}">Edit</a> 
				 </td>
		      </tr>
	     <%--  </c:forEach> --%>
          </table>
          </div> 
          </div>
 </form:form>
  <script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
 <%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/> --%>
</body>
</html> 