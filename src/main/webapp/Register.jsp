<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
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

        /* Menu button */
        .openbtn {
            font-size: 22px;
            cursor: pointer;
            background-color: #4875e8;
            color: white;
            padding: 10px 15px;
            border: none;
            position: absolute;
            top: 15px;
            left: 15px;
            border-radius: 5px;
        }
    .register-container {
        width: 450px;
        margin: 80px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .register-container h2 {
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
    .login-text {
        margin-top: 20px;
        color: #666;
    }
    .login-text a {
        text-decoration: none;
        font-weight: bold;
        color: vivid blue;
    }
    .login-text a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<!-- Sidebar -->
    <div id="mySidebar" class="sidebar">
        <span class="closebtn" onclick="closeNav()">&times;</span>
        <a href="Index.jsp">🏠 Home</a>
        <a href="login.jsp">🔑 Login</a>
        <a href="Register.jsp">📄 Register</a>
        <a href="about.jsp">ℹ About</a>
        <a href="contact.jsp">📞 Contact</a>
    </div>

    <!-- Menu Button -->
    <button class="openbtn" onclick="openNav()">☰ Menu</button>
<div class="register-container">
    <form action="RegisterServe" method="post">
        <h2>Create Your Account</h2>
        
        <input type="text" class="form-control" name="uname" placeholder="Choose a Username" required/>
        <input type="password" class="form-control" name="pass" placeholder="Enter Password" required/>
        <input type="text" class="form-control" name="nm" placeholder="Enter Your Full Name" required/>
        
        <input type="submit" class="btn btn-primary btn-custom" value="REGISTER"/>
        
        <div class="login-text">
            <p>Already have an account? <a href="Login.jsp">Login Here</a></p>
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
