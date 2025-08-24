<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>CLIENT MENU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: #e0f2f1;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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

<div class="menu-container">
  <h1 class="menu-title">CLIENT MENU</h1>
  <div class="menu-box">
    <a href="SearchJob.jsp" class="menu-item">SEARCH JOB</a>
    <a href="ApplySubMenu.jsp" class="menu-item">APPLY FOR JOB</a>
    <a href="SearchApplication.jsp" class="menu-item">SEARCH APPLICATION</a>
  </div>
</div>

</body>
</html>