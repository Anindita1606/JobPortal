<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Seeker Registration</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body { background: linear-gradient(135deg, #e0f2f1, #b2dfdb); font-family: 'Segoe UI', sans-serif; }
    
    /* Sidebar Styles */
    .sidebar { height: 100%; width: 0; position: fixed; top: 0; left: 0; background-color: #111; overflow-x: hidden; transition: 0.4s; padding-top: 60px; z-index: 2; }
    .sidebar a { padding: 12px 20px; text-decoration: none; font-size: 18px; color: white; display: block; transition: 0.3s; }
    .sidebar a:hover { background-color: #575757; }
    .sidebar .closebtn { position: absolute; top: 10px; right: 20px; font-size: 30px; color: white; cursor: pointer; }

    /* Menu Button */
    .openbtn { font-size: 22px; cursor: pointer; background-color: #00796b; color: white; padding: 10px 15px; border: none; position: fixed; top: 15px; left: 15px; border-radius: 5px; z-index: 1; }

    .form-container { max-width: 500px; margin: 80px auto; background: #fff; padding: 40px; border-radius: 25px; box-shadow: 0 8px 20px rgba(0,0,0,0.1); }
    .form-container h2 { text-align: center; font-weight: bold; margin-bottom: 25px; color: #00796b; }
</style>
</head>
<body>

<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="ApplySubMenu.jsp">↩️ Back to Menu</a>
    <a href="Index.jsp">🚪 Logout</a>
</div>

<button class="openbtn" onclick="openNav()">☰</button>

<div class="form-container">
    <h2>Job Seeker Registration</h2>
    <form action="JobseekerRegisterServe" method="post">
        <input type="text" class="form-control mb-3" name="username" placeholder="USERNAME" required/>
        <input type="password" class="form-control mb-3" name="password" placeholder="PASSWORD" required/>
        <input type="text" class="form-control mb-3" name="name" placeholder="NAME" required/>
        <input type="tel" class="form-control mb-3" name="phno" placeholder="PHONE NUMBER" required/>
        <input type="email" class="form-control mb-3" name="email" placeholder="EMAIL" required/>
        <input type="text" class="form-control mb-3" name="domain" placeholder="DOMAIN (e.g., IT, Finance)" required/>
        <input type="number" class="form-control mb-3" name="yrexp" placeholder="YEARS OF EXPERIENCE" required/>
        <button type="submit" class="btn btn-primary w-100" style="background-color: #00796b; border: none;">ADD</button>
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