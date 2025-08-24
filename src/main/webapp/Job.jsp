<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOB FORM</title>
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
  .job-section {
    display: flex;
    max-width: 950px;
    width: 100%;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0px 8px 30px rgba(0,0,0,0.2);
    overflow: hidden;
  }

  .form-container {
    flex: 55%;
    padding: 40px;
  }

  .form-container h2 {
    text-align: center;
    margin-bottom: 25px;
    font-weight: bold;
    color: #1976d2;
  }

  .btn-custom {
    width: 100%;
    border-radius: 10px;
    padding: 12px;
    font-weight: bold;
    font-size: 16px;
  }

  .side-img {
    flex: 45%;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #f5f9ff;
    padding: 20px;
  }

  .side-img img {
    width: 100%;
    height: auto;
    max-height: 450px;
    border-radius: 15px;
    box-shadow: 0 6px 20px rgba(0,0,0,0.15);
    object-fit: contain;
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
<div class="job-section">
  <!-- Job Form -->
  <div class="form-container">
    <form action="JobAddServe" method="post">
      <h2>JOB FORM</h2>

      <div class="mb-3">
        <input type="text" class="form-control" name="jobid" placeholder="Enter Job ID" required>
      </div>

      <div class="mb-3">
        <input type="text" class="form-control" name="jobnm" placeholder="Enter Job Name" required>
      </div>

      <div class="mb-3">
        <select class="form-select" name="jobtype" required>
          <option value="">--Select Job Type--</option>
          <option value="Full Time">Full Time</option>
          <option value="Part Time">Part Time</option>
          <option value="Internship">Internship</option>
          <option value="Contract">Contract</option>
        </select>
      </div>

      <div class="mb-3">
        <select class="form-select" name="domain" required>
          <option value="">--Select Domain--</option>
          <option value="IT">IT</option>
          <option value="Finance">Finance</option>
          <option value="Healthcare">Healthcare</option>
          <option value="Education">Education</option>
          <option value="Engineering">Engineering</option>
        </select>
      </div>

      <div class="mb-3">
        <input type="date" class="form-control" name="validupto" required>
      </div>

      <div class="mb-3">
        <input type="number" class="form-control" name="yrsexp" placeholder="Enter Years of Experience" required>
      </div>

      <div class="mb-3">
        <input type="text" class="form-control" name="companyid" placeholder="Enter Company ID" required>
      </div>

      <input type="submit" class="btn btn-primary btn-custom" value="SAVE">
    </form>
    <!-- Success Message Section -->
        <!-- 
        <%
            String msg = request.getParameter("msg");
            if("success".equals(msg)){
        %>
            <div class="success-msg">
                ✅ Job has been added successfully!
            </div>
        <%
            }
        %>
        -->
  </div>

  <!-- Side Image -->
  <div class="side-img">
    <img src="https://static.vecteezy.com/system/resources/previews/020/811/045/non_2x/hiring-employee-open-recruitment-concept-job-vacancy-illustration-vector.jpg" alt="Job illustration"/>
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
