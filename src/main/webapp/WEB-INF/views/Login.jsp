<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<!-- <body style="padding-top:">
	<div class="container">
		<section id="content">
			<form action="perform_Login" method="post">
				<h4>Login</h4>
				<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for name is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					 pattern=".{3,8}" title="Enter Valid credentials"/>
				</div>
				<div>
					<input type="submit" value="Login" />  <a href="Registration">Register Here</a>
					
				</div>
				
			</form>
			
		</section>
		
	</div> -->
	<form action="perform_login" method="POST">
	username<input type="text" name="username">
	password<input type="password" name="password">
	<input type="submit" value="login">
	</form>
	
</body>
</html>