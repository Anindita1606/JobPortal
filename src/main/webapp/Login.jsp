<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
/* Sidebar (hidden by default) */
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

        /* Menu button */
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
    .login-container {
        width: 400px;
        margin: 80px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .login-container h2 {
        font-weight: bold;
        margin-bottom: 25px;
        color: #333;
    }
    .form-control {
        margin-bottom: 20px;
        border-radius: 12px;
        padding: 12px;
    }
    .btn-custom {
        width: 100%;
        border-radius: 12px;
        padding: 12px;
        font-weight: bold;
    }
    .btn-custom:hover {
        background: #0056b3;
        color: #fff;
    }
    .signup-text {
        margin-top: 20px;
        color: #666;
    }
    .signup-text a {
        text-decoration: none;
        font-weight: bold;
        color: #007bff;
    }
    .signup-text a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<!-- Sidebar -->
    <div id="mySidebar" class="sidebar">
        <span class="closebtn" onclick="closeNav()">&times;</span>
        <a href="index.jsp">🏠 Home</a>
        <a href="login.jsp">🔑 Login</a>
        <a href="register.jsp">📄 Register</a>
        <a href="about.jsp">ℹ About</a>
        <a href="contact.jsp">📞 Contact</a>
    </div>

    <!-- Menu Button -->
    <button class="openbtn" onclick="openNav()">☰ Menu</button>
<div class="login-container">
    <form action="LoginAddServe" method="post">
        <h2>Login to Your Account</h2>
        <input type="text" class="form-control" name="uname" placeholder="Enter Username" required/>
        <input type="password" class="form-control" name="pass" placeholder="Enter Password" required/>
        <input type="submit" class="btn btn-primary btn-custom" value="LOGIN"/>
        
        <div class="signup-text">
            <p>Don't have an account? <a href="Register.jsp">Sign Up</a></p>
        </div>
    </form>
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