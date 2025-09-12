<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, master.dao.ContactDAO, master.dto.ContactDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Messages</title>
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
        max-width: 1100px;
        width: 100%;
        background: #fff;
        border-radius: 20px;
        box-shadow: 0px 8px 30px rgba(0,0,0,0.2);
        overflow: hidden;
        padding: 30px;
        flex-direction: column;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        font-weight: bold;
        color: #1976d2;
    }
    .btn-custom {
        border-radius: 12px;
        padding: 10px 20px;
        background: #1976d2;
        border: none;
        color: white;
        font-weight: bold;
        transition: 0.3s;
    }
    .btn-custom:hover {
        background: #0d47a1;
    }

    .popup {
        margin-top: 15px;
        padding: 12px;
        border-radius: 12px;
        font-weight: bold;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }
    .success-msg {
        background: #d4edda;
        color: #155724;
    }
    .error-msg {
        background: #f8d7da;
        color: #721c24;
    }
    @keyframes fadeIn {
        from {opacity: 0;}
        to {opacity: 1;}
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
        <a href="AdminMessages.jsp">Messages</a>
    </div>

    <!-- Menu Button -->
    <button class="openbtn" onclick="openNav()">☰ Menu</button>

    <!-- Card -->
    <div class="card-form">
        <h2>📩 User Messages</h2>

        <%
            String msg = request.getParameter("msg");
            if("success".equals(msg)){
        %>
            <div class="popup success-msg">✅ Message deleted successfully!</div>
        <%
            } else if("error".equals(msg)){
        %>
            <div class="popup error-msg">❌ Failed to delete message. Try again!</div>
        <%
            }
        %>

        <form method="get">
            <div class="text-center mb-3">
                <button type="submit" name="action" value="show" class="btn btn-custom">
                    Show Messages
                </button>
            </div>
        </form>

        <%
            String action = request.getParameter("action");
            if ("show".equals(action)) {
                ContactDAO cdao = new ContactDAO();
                List<ContactDTO> messages = cdao.fetchMessages();

                if (messages.isEmpty()) {
        %>
                    <div class="alert alert-info text-center">No messages found.</div>
        <%
                } else {
        %>
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped text-center">
                            <thead class="table-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Message</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
                                for (ContactDTO m : messages) {
                            %>
                                <tr>
                                    <td><%= m.getId() %></td>
                                    <td><%= m.getName() %></td>
                                    <td><%= m.getEmail() %></td>
                                    <td><%= m.getMessage() %></td>
                                    <td>
                                        <a href="DeleteMessageServe?id=<%= m.getId() %>" 
                                           class="btn btn-danger btn-sm"
                                           onclick="return confirm('Are you sure you want to delete this message?');">
                                           Delete
                                        </a>
                                    </td>
                                </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
        <%
                }
            }
        %>
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