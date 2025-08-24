<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE COMPANY FORM</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
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
    .card-form {
        display: flex;
        max-width: 950px;
        width: 100%;
        background: #fff;
        border-radius: 20px;
        box-shadow: 0px 8px 30px rgba(0,0,0,0.2);
        overflow: hidden;
    }

    /* Left section (Form) */
    .form-section {
        flex: 1;
        padding: 40px;
    }
    .form-section h2 {
        text-align: center;
        margin-bottom: 25px;
        font-weight: bold;
        color: #1976d2;
    }
    .form-control {
        margin-bottom: 15px;
        border-radius: 12px;
        padding: 12px;
        border: 1px solid #ccc;
        transition: 0.3s;
    }
    .form-control:focus {
        border-color: #1976d2;
        box-shadow: 0 0 8px rgba(25, 118, 210, 0.3);
    }
    .btn-custom {
        width: 100%;
        border-radius: 12px;
        padding: 12px;
        background: #1976d2;
        border: none;
        color: white;
        font-weight: bold;
        transition: 0.3s;
    }
    .btn-custom:hover {
        background: #0d47a1;
    }
    .image-section {
        flex: 1;
        background: #f5f9ff;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    .image-section img {
        max-width: 100%;
        height: auto;
    }
</style>
</head>
<body>
<!-- Sidebar -->
    <div id="mySidebar" class="sidebar">
        <span class="closebtn" onclick="closeNav()">&times;</span>
        <a href="Company.jsp">Company</a>
        <a href="UpdateCompany.jsp">Update Company</a>
        <a href="DeleteCompany.jsp">Delete Company</a>
        <a href="Job.jsp">Jobs</a>
    </div>

    <!-- Menu Button -->
    <button class="openbtn" onclick="openNav()">☰ Menu</button>
<div class="card-form">
    <!-- Left: Company Form -->
    <div class="form-section">
        <form action="FoodAddServe" method="post">
            <h2>DELETE COMPANY FORM</h2>
            <input type="text" class="form-control" name="cid" placeholder="Enter Company Id" required/>
            <input type="submit" class="btn btn-custom" value="DELETE"/>
        </form>
        <!-- 
        <%
            String msg = request.getParameter("msg");
            if("success".equals(msg)){
        %>
            <div class="success-msg">
                ✅ Company has been deleted successfully!
            </div>
        <%
            }
        %>
        -->
    </div>

    <!-- Right: Decorative Image -->
    <div class="image-section">
        <img src="https://cdn-icons-png.flaticon.com/512/1995/1995560.png" alt="Company Illustration"/>
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
