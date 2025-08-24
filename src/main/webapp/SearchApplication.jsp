<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Applications</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        background: linear-gradient(135deg, #e0f2f1, #b2dfdb);
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
        position: absolute; top: 15px; left: 15px; border-radius: 5px; z-index: 1;
    }
    
    .search-container {
        max-width: 900px;
        margin: 50px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
    }
    .search-container h2 {
        font-weight: bold;
        margin-bottom: 25px;
        color: #00796b;
        text-align: center;
    }
    .btn-custom {
        background-color: #00796b;
        border-color: #00796b;
        color: white;
    }
    .btn-custom:hover {
        background-color: #004d40;
        border-color: #004d40;
    }
</style>
</head>
<body>

<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="ClientMenu.jsp"> Client Menu</a>
    <a href="SearchJob.jsp"> Search Job</a>
    <a href="SearchApplication.jsp"> My Applications</a>
    <a href="Index.jsp"> Logout</a>
</div>

<button class="openbtn" onclick="openNav()">☰</button>

<div class="search-container">
    <h2>My Job Applications</h2>
    
    <form action="" method="post">
        <div class="input-group mb-4">
            <input type="text" class="form-control" name="username" placeholder="Enter your username to confirm" required>
            <button class="btn btn-custom" type="submit">Search</button>
        </div>
    </form>
    
    <table class="table table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>Job ID</th>
                <th>Job Name</th>
                <th>Company ID</th>
                <th>Date Applied</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>J102</td>
                <td>Financial Analyst</td>
                <td>C02</td>
                <td>2025-08-20</td>
                <td><span class="badge bg-success">Viewed</span></td>
            </tr>
            <tr>
                <td>J103</td>
                <td>Marketing Intern</td>
                <td>C01</td>
                <td>2025-08-18</td>
                <td><span class="badge bg-secondary">Submitted</span></td>
            </tr>
        </tbody>
    </table>
    <div class="text-center mt-4">
        <a href="ClientMenu.jsp" class="btn btn-secondary">Back to Menu</a>
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