<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ADMIN MENU</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: #eaf3ff; /* Light blue background */
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .menu-container {
      margin: 80px auto;
      text-align: center;
    }
    .menu-title {
      font-size: 28px;
      font-weight: bold;
      color: #1a3d7c; /* Dark blue text */
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
      border: 2px solid #1e90ff; /* Blue border */
      box-shadow: 0 6px 15px rgba(0,0,0,0.1);
      font-size: 18px;
      font-weight: bold;
      color: #1e90ff; /* Blue text */
      transition: 0.3s ease-in-out;
      text-decoration: none;
    }
    .menu-item:hover {
      background: #dbeafe; /* Soft blue hover background */
      transform: translateY(-5px);
      color: #104e8b; /* Darker blue on hover */
    }
  </style>
</head>
<body>

<div class="menu-container">
  <h1 class="menu-title">ADMIN MENU</h1>
  <div class="menu-box">
    <a href="Company.jsp" class="menu-item">COMPANY</a>
    <a href="UpdateCompany.jsp" class="menu-item">UPDATE COMPANY</a>
    <a href="DeleteCompany.jsp" class="menu-item">DELETE COMPANY</a>
    <a href="Job.jsp" class="menu-item">JOB</a>
  </div>
</div>

</body>
</html>
