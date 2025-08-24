<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width: 30%;margin:50px auto;border:2px solid black;text-align:center;border-radius:30px;">
	<form action ="RegisterAddServe" method="post">
		<h2 class="test-primary">REGISTRATION FORM</h2>
		<input type="text" class="form-control" name="uname" placeholder="Enter the Username"/>
		<input type="password" class="form-control" name="pass" placeholder="Enter the Password"/>
		<input type="text" class="form-control" name="nm" placeholder="Enter your Name"/>
		<input type="submit" class="btn btn-outline-info" value="REGISTER"/>
	</form>
</div>
</body>
</html>