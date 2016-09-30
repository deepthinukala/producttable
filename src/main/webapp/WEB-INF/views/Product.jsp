 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">

<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>

 <c:url var="addAction" value="addproduct" ></c:url>

<form:form action="${addAction}" modelAttribute="product" id="btn-add">
   <h3>
                    <c:if test="$(product.id==0}"> 
		       Add New Item
	            </c:if>
	            <c:if test="${!empty product.id}">
		      Update Item for Id: <c:out value="${product.id}"/>
		      <form:hidden path="id"/>
	            </c:if>
         </h3>
	  <table>
	  
	  <tr>  <c:if test="${product.id!=0}">
	  <td> Id:</td> <td><form:input  path="id" disabled="true"/></td> 
	   </c:if>
	    <tr> <td> Name:</td> <td><form:input  path="name"/></td> 
	    <tr> <td>Description:</td> <td><form:input path="description"/> </td> 
	 <tr>
				<td>Category:</td>
				<td><form:select path="categoryid" required="true">
				<c:forEach items="${allInfo}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td>
								<tr>
								<td>Supplier:</td>
				<td><form:select path="supplierid" required="true">
				<c:forEach items="${allSupplier}" var="supplier">
								<form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
	    <tr> <td>Price: </td> <td><form:input path="price"/></td> 
	    <tr> <td colspan="2">
    	        <c:if test="${product.id==0}">
			      <input type="submit" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${product.id!=0}">
			      <input type="submit" value="Update" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	  <table>   
			<tr>
			 <td> ID </td>
		        <td> Name </td>
				 <td> Description</td>
				 <td> Categoryid</td>
				 <td> Supplierid</td>
				 <td> Price </td>
				
				 <td colspan="2"> Action </td>
	      	</tr>
    	      <c:forEach var="obj" items="${allData}">
		      <tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 <td> <c:out value="${obj.description}"/> </td>
				 <td> <c:out value="${obj.categoryid}"/> </td>
				 <td> <c:out value="${obj.supplierid}"/> </td>
				 <td> <c:out value="${obj.price}"/> </td>
				 
				
				 <td> <a href="deleteByproduct/${obj.id}">Delete </a> |
				     <a href="ItemByproduct/${obj.id}">Edit</a> 
				 </td>
		      </tr>
	      </c:forEach>
          </table> 
 </form:form>
  <script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>
</body>
</html>  