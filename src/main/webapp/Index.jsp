<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>HOME</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
.custom-btn {
    padding: 15px 25px;
    margin: 5px;
    background-color: white;
    display: inline-block;
    text-align: center;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: background-color 0.4s ease;
}
.custom-btn:hover {
    background-color: yellow;
}
#main {
    display: flex;
    justify-content: space-between;
    text-align: center;
    padding: 15px;
    backgroung-color:black;
}
#left h2 {
    margin: 0;
}
#right a {
    text-decoration: none;
    margin: 0 10px;
    font-weight: bold;
    color: black;
}
</style>
</head>
<body>
<header id="main">
    <div id="left">
        <h2>JOB PORTAL</h2>
    </div>
    <div id="right">
        <a href="Index.jsp">HOME</a>  &nbsp; &nbsp;
        <a href="FindJob.jsp">FIND JOB</a>  &nbsp; &nbsp;
        <a href="About.jsp">ABOUT</a>  &nbsp; &nbsp;
        <a href="Contact.jsp">CONTACT US</a>  &nbsp; &nbsp;
        <div class="custom-btn">
            <a href="Login.jsp">LOGIN</a> &nbsp; 
            
        </div>
        <div class="custom-btn">
        	<a href="Register.jsp">REGISTER</a>
        </div>
    </div>
</header>
</body>
</html>
