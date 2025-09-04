<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME PAGE</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

<style>
    body {
        background: linear-gradient(180deg, #0d1b3d, #0f2347); 
        background-image: url("h1_hero.jpg");  
        background-size: cover;                 
        background-repeat: no-repeat;           
        background-position: center;            
        min-height: 100vh;                        
        color: white;
        font-family: 'Segoe UI', sans-serif;
        text-align: center;
        display: flex;
        flex-direction: column;
    }

    .search-bar {
        margin-top: 30px;
        margin-left: auto;
        margin-right: auto;
        width: 90%;
        max-width: 600px;
    }

    .tagline {
        font-size: 28px;
        font-weight: bold;
        margin-top: 180px;
        color: #063970;
        text-shadow: 1px 1px 4px rgba(0,0,0,0.6);
    }

    .sub-text {
        font-size: 18px;
        margin-top: 20px;
        margin-bottom: 40px;
        color: #063970;
    }

    .btn-custom {
        margin: 15px;
        border-radius: 25px;
        padding: 12px 35px;
        font-size: 18px;
        transition: 0.3s;
    }

    .btn-custom:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 12px rgba(0,0,0,0.3);
    }

    /* Sidebar styles */
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
/* Footer styles */
footer {
    margin-top: auto;
    background: #0b0f2d;
    color: #bbb;
    padding: 15px 10px;   /* reduced height */
    text-align: center;
}

footer h5 {
    color: #fff;
    margin-bottom: 8px;   /* smaller spacing */
    font-size: 16px;
}

footer p {
    font-size: 14px;
    margin: 0;
}

footer a {
    color: #bbb;
    font-size: 14px;
    text-decoration: none;
    margin: 0 5px;
}

footer a:hover {
    color: #0dcaf0;
}

.footer-social i {
    font-size: 18px;   /* smaller icons */
    margin: 0 6px;
    cursor: pointer;
    transition: 0.3s;
}

.footer-social i:hover {
    color: #0dcaf0;
}

.footer-bottom {
    margin-top: 8px;
    font-size: 12px;
    color: #888;
}

    
</style>
</head>
<body>

    <!-- Sidebar -->
    <div id="sidebar">
        <a href="Index.jsp"><i class="bi bi-house-door"></i> Home</a>
        <a href="Login.jsp"><i class="bi bi-box-arrow-in-right"></i> Login</a>
        <a href="Register.jsp"><i class="bi bi-person-plus"></i> Register</a>
        <a href="#"><i class="bi bi-file-earmark-text"></i> About</a>
        <a href="#"><i class="bi bi-telephone"></i> Contact</a>
    </div>

    <!-- Hamburger Menu -->
    <button class="openbtn" onclick="toggleNav()">☰</button>

    <!-- Search bar -->
    <div class="container text-center">
        <form class="d-flex justify-content-center search-bar">
            <input class="form-control me-2" type="search" placeholder="Search jobs here..." aria-label="Search">
            <button class="btn btn-light" type="submit"><i class="bi bi-search"></i></button>
        </form>
    </div>

    <!-- Text -->
    <div class="tagline">Find your dream job now</div>
   <div class="sub-text">Browse available opportunities and apply easily</div>


    <!-- Buttons -->
    <div>
        <a href="Login.jsp" class="btn btn-light btn-custom">Login</a>
        <a href="Register.jsp" class="btn btn-primary btn-custom">Register</a>
    </div>

   <footer>
    <div class="container">
        <div class="row text-center align-items-center">
            <div class="col-md-4">
                <h5>About Us</h5>
                <p>Connecting talent with opportunities. Your career growth is our priority.</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <a href="Index.jsp">Home</a> | 
                <a href="Login.jsp">Login</a> | 
                <a href="Register.jsp">Register</a> | 
                <a href="#">Contact</a>
            </div>
            <div class="col-md-4">
                <h5>Follow Us</h5>
                <div class="footer-social">
                    <i class="bi bi-facebook"></i>
                    <i class="bi bi-twitter"></i>
                    <i class="bi bi-linkedin"></i>
                    <i class="bi bi-instagram"></i>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            © 2025 JobPortal | Designed with ❤️ for career seekers
        </div>
    </div>
</footer>


    <!-- Script for Sidebar -->
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
