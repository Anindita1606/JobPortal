<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width: 30%;margin:50px auto;border:2px solid black;text-align:center;border-radius:30px;">
	<form action ="LoginAddServe" method="post">
		<h2 class="test-secondary">LOGIN FORM</h2>
		<input type="text" class="form-control" name="uname" placeholder="Enter the Username"/>
		<input type="password" class="form-control" name="pass" placeholder="Enter the Password"/>
		<input type="submit" class="btn btn-outline-info" value="LOGIN"/>
		<h4>Don't have an account?</h4>
		<a href="Register.jsp" >Sign Up</a>
		
	</form>
</div>
</body>
</html>