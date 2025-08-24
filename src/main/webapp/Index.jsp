<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"/>

<style>
body {
    font-family: 'Didone', serif;
    margin: 0;
    padding: 0;
}
.custom-btn {
    padding: 15px 25px;
    margin: 5px;
    background-color: white;
    display: inline-block;
    text-align: center;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: background-color 0.4s ease;
    text-decoration: none;
    font-weight: 600;
}
.custom-btn:hover {
    background-color: yellow;
}
#main {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px;
    background-color: black;   
    color: white;
}
#left h2 {
    margin: 0;
    color: white;
    font-weight: 600;
}
#right a {
    text-decoration: none;
    margin: 0 10px;
    font-weight: 600;
    color: white;
}
#right a:hover {
    color: blue;
}
#center {
    text-align: center;
    margin-top: 30px;
}
#center a {
    text-decoration: none;
}
#center img {
    width: 400px;
    height: 300px;   
    object-fit: cover; 
    display: block;
    margin: 0 auto 20px auto; 
    border: 2px solid black;
    border-radius: 10px; 
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
    </div>
</header>

<div id="center">
    <img src="https://thumbs.dreamstime.com/z/job-portal-lettering-logo-design-template-concept-professional-employee-recruitment-agency-logo-vector-job-portal-lettering-220648774.jpg?ct=jpeg" alt="NO IMAGE"/>
    
    <div class="custom-btn">
        <a href="Login.jsp">LOGIN</a>
    </div>
    <div class="custom-btn">
        <a href="Register.jsp">REGISTER</a>
    </div>
</div>

</body>
</html>
