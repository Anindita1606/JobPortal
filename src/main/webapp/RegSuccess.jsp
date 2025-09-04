<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUCCESS</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

<style>
#sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        top: 0;
        left: 0;
        background: rgba(0,0,0,0.95);
        backdrop-filter: blur(6px);
        box-shadow: 2px 0 12px rgba(0,0,0,0.7);
        overflow-x: hidden;
        transition: 0.4s ease;
        padding-top: 60px;
        z-index: 1000;
    }

    #sidebar a {
        padding: 15px 25px;
        text-decoration: none;
        font-size: 18px;
        color: #f1f1f1;
        display: block;
        transition: 0.2s;
    }

    #sidebar a:hover {
        background-color: #575757;
        border-radius: 8px;
    }

    /* Hamburger button */
    .openbtn {
        font-size: 28px;
        cursor: pointer;
        background-color: transparent;
        border: none;
        color: #063970;
        position: absolute;
        top: 15px;
        left: 15px;
        z-index: 1100;
    }
  </style>
</head>
<body>
<h2 style="text-align:center;">REGISTERED SUCCESSFULLY</h2>

 <div id="sidebar">
        <a href="Index.jsp"><i class="bi bi-house-door"></i> Home</a>
        <a href="Login.jsp"><i class="bi bi-box-arrow-in-right"></i> Login</a>
        <a href="Register.jsp"><i class="bi bi-person-plus"></i> Register</a>
        <a href="#"><i class="bi bi-file-earmark-text"></i> About</a>
        <a href="#"><i class="bi bi-telephone"></i> Contact</a>
    </div>

    <!-- Hamburger Menu -->
    <button class="openbtn" onclick="toggleNav()">☰</button>
<script>
        function toggleNav() {
            let sidebar = document.getElementById("sidebar");
            if (sidebar.style.width === "250px") {
                sidebar.style.width = "0";
            } else {
                sidebar.style.width = "250px";
            }
        }
    </script>

</body>
</html>