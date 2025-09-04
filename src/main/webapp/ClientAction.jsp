<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Seeker Actions</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<style>
    body { background: linear-gradient(135deg, #e0f2f1, #b2dfdb); font-family: 'Segoe UI', sans-serif; }
    
    /* Sidebar Styles */
    .sidebar { height: 100%; width: 0; position: fixed; top: 0; left: 0; background-color: #111; overflow-x: hidden; transition: 0.4s; padding-top: 60px; z-index: 1050; }
    .sidebar a { padding: 12px 20px; text-decoration: none; font-size: 18px; color: white; display: block; transition: 0.3s; }
    .sidebar a:hover { background-color: #575757; }
    .sidebar .closebtn { position: absolute; top: 10px; right: 20px; font-size: 30px; color: white; cursor: pointer; }

    /* Menu Button */
    .openbtn { font-size: 22px; cursor: pointer; background-color: #00796b; color: white; padding: 10px 15px; border: none; position: fixed; top: 15px; left: 15px; border-radius: 5px; z-index: 1040; }
    
    .main-container { max-width: 900px; margin: 80px auto 30px auto; background: #fff; padding: 30px; border-radius: 25px; box-shadow: 0 8px 20px rgba(0,0,0,0.1); }
    .nav-tabs .nav-link { color: #00796b; font-weight: bold; }
    .nav-tabs .nav-link.active { color: #004d40; background-color: #fff; border-color: #dee2e6 #dee2e6 #fff; }
    .tab-content { padding-top: 20px; }
    h2, h4 { text-align: center; font-weight: bold; color: #00796b; margin-bottom: 25px; }
</style>
</head>
<body>

<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="Index.jsp">🏠 Home</a>
    <a href="Login.jsp">🔑 Login</a>
</div>

<button class="openbtn" onclick="openNav()">☰</button>

<div class="main-container">
    <h2>Job Seeker Portal</h2>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="jobseeker-tab" data-bs-toggle="tab" data-bs-target="#jobseeker" type="button" role="tab">Job Seeker (Register)</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="search-tab" data-bs-toggle="tab" data-bs-target="#search" type="button" role="tab">Search Job</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="apply-tab" data-bs-toggle="tab" data-bs-target="#apply" type="button" role="tab">Job Apply</button>
        </li>
    </ul>

    <div class="tab-content" id="myTabContent">
        
        <div class="tab-pane fade show active" id="jobseeker" role="tabpanel">
            <h4>Create Your Account</h4>
            <form action="JobseekerRegisterServe" method="post" style="max-width: 450px; margin: auto;">
                <input type="text" class="form-control mb-3" name="username" placeholder="USERNAME" required/>
                <input type="password" class="form-control mb-3" name="password" placeholder="PASSWORD" required/>
                <input type="text" class="form-control mb-3" name="name" placeholder="FULL NAME" required/>
                <input type="tel" class="form-control mb-3" name="phno" placeholder="PHONE NUMBER" required/>
                <input type="email" class="form-control mb-3" name="email" placeholder="EMAIL" required/>
                <input type="text" class="form-control mb-3" name="domain" placeholder="DOMAIN (e.g., IT, Finance)" required/>
                <input type="number" class="form-control mb-3" name="yrexp" placeholder="YEARS OF EXPERIENCE" required/>
                <button type="submit" class="btn btn-primary w-100" style="background-color: #00796b; border: none;">REGISTER</button>
            </form>
        </div>

        <div class="tab-pane fade" id="search" role="tabpanel">
            <h4>Find Your Next Job</h4>
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Job ID</th>
                        <th>Job Name</th>
                        <th>Company</th>
                        <th>Experience (Yrs)</th>
                        <th>Apply</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>J101</td>
                        <td>Java Developer</td>
                        <td>C01</td>
                        <td>2</td>
                        <td><a href="#" class="btn btn-sm btn-success">Apply</a></td>
                    </tr>
                    <tr>
                        <td>J102</td>
                        <td>Financial Analyst</td>
                        <td>C02</td>
                        <td>3</td>
                        <td><a href="#" class="btn btn-sm btn-success">Apply</a></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="tab-pane fade" id="apply" role="tabpanel">
            <h4>Complete Your Application</h4>
            <form action="JobApplyServe" method="post" style="max-width: 450px; margin: auto;">
                <div class="mb-3">
                    <label class="form-label">USERNAME</label>
                    <input type="text" class="form-control" name="username" required/>
                </div>
                <div class="mb-3">
                    <label class="form-label">JOB ID</label>
                    <input type="text" class="form-control" name="jobid" placeholder="Enter Job ID from Search Tab" required/>
                </div>
                <div class="mb-3">
                    <label class="form-label">APPLY DATE</label>
                    <input type="date" class="form-control" name="applydt" required/>
                </div>
                <button type="submit" class="btn btn-primary w-100" style="background-color: #00796b; border: none;">SUBMIT APPLICATION</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

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