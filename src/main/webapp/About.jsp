<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: #f0f4ff;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        top: 0;
        left: 0;
        background-color: #111;
        overflow-x: hidden;
        transition: 0.4s;
        padding-top: 60px;
        z-index: 2;
    }
    .sidebar a {
        padding: 12px 20px;
        text-decoration: none;
        font-size: 18px;
        color: white;
        display: block;
        transition: 0.3s;
    }
    .sidebar a:hover {
        background-color: #575757;
    }
    .sidebar .closebtn {
        position: absolute;
        top: 10px;
        right: 20px;
        font-size: 30px;
        color: white;
        cursor: pointer;
    }
    .openbtn {
        font-size: 22px;
        cursor: pointer;
        background-color:#007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        position: absolute;
        top: 15px;
        left: 15px;
        border-radius: 5px;
    }
    .content-box {
        width: 70%;
        margin: 100px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .content-box h2 {
        font-weight: bold;
        margin-bottom: 25px;
        color: #333;
    }
    .content-box p {
        font-size: 16px;
        color: #555;
        line-height: 1.7;
    }
</style>
</head>
<body>
<!-- Sidebar -->
<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="Index.jsp">🏠 Home</a>
    <a href="Login.jsp">🔑 Login</a>
    <a href="Register.jsp">📄 Register</a>
    <a href="About.jsp">ℹ About</a>
    <a href="Contact.jsp">📞 Contact</a>
</div>

<!-- Menu Button -->
<button class="openbtn" onclick="openNav()">☰ Menu</button>

<div class="content-box">
    <h2>About Our Project</h2>
    <p>
        Welcome to our Job Portal project!  
        This platform is designed to connect job seekers with recruiters in a seamless way.  
        Inspired by modern job portals like JobDakho, we aim to provide a simple, secure, and user-friendly platform.  
        Our mission is to make job searching and hiring faster and easier for everyone.
    </p>
    <p>
        <b>Key Features:</b><br>
        ✅ Easy Registration & Login<br>
        ✅ Search & Apply for Jobs<br>
        ✅ Recruiter-Friendly Job Posting<br>
        ✅ Responsive & Modern Design
    </p>
</div>

<script>
function openNav() {
    document.getElementById("mySidebar").style.width = "220px";
}
function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
}
</script>
</body>
</html>