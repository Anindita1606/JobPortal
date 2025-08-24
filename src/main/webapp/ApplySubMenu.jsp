<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Application Menu</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: #e0f2f1;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    /* Sidebar Styles */
    .sidebar {
        height: 100%; width: 0; position: fixed; top: 0; left: 0;
        background-color: #111; overflow-x: hidden; transition: 0.4s;
        padding-top: 60px; z-index: 2;
    }
    .sidebar a {
        padding: 12px 20px; text-decoration: none; font-size: 18px;
        color: white; display: block; transition: 0.3s;
    }
    .sidebar a:hover { background-color: #575757; }
    .sidebar .closebtn {
        position: absolute; top: 10px; right: 20px;
        font-size: 30px; color: white; cursor: pointer;
    }

    /* Menu Button */
    .openbtn {
        font-size: 22px; cursor: pointer; background-color: #00796b;
        color: white; padding: 10px 15px; border: none;
        position: fixed; top: 15px; left: 15px; border-radius: 5px; z-index: 1;
    }
    
    .menu-container {
      margin: 80px auto;
      text-align: center;
    }
    .menu-title {
      font-size: 28px;
      font-weight: bold;
      color: #004d40;
      margin-bottom: 40px;
    }
    .menu-box {
      display: flex;
      justify-content: center;
      gap: 25px;
      flex-wrap: wrap;
    }
    .menu-item {
      width: 220px;
      padding: 25px;
      border-radius: 15px;
      background: #fff;
      border: 2px solid #00796b;
      box-shadow: 0 6px 15px rgba(0,0,0,0.1);
      font-size: 18px;
      font-weight: bold;
      color: #00796b;
      transition: 0.3s ease-in-out;
      text-decoration: none;
    }
    .menu-item:hover {
      background: #b2dfdb;
      transform: translateY(-5px);
      color: #004d40;
    }
  </style>
</head>
<body>

<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="ClientMenu.jsp">🏠 Main Menu</a>
    <a href="Index.jsp">🚪 Logout</a>
</div>

<button class="openbtn" onclick="openNav()">☰</button>

<div class="menu-container">
  <h1 class="menu-title">Application Menu</h1>
  <div class="menu-box">
    <a href="Jobseeker.jsp" class="menu-item">JOB SEEKER</a>
    <a href="SearchJob.jsp" class="menu-item">SEARCH JOB</a>
    <a href="JobApply.jsp" class="menu-item">JOB APPLY</a>
</div>
   <div class="text-center mt-4">
        <a href="ClientMenu.jsp" class="btn btn-secondary">Back to Main Menu</a>
    </div>
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