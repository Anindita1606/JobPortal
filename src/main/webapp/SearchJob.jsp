<%@ page import="java.sql.*" %>
<%@ page import="master.dao.ClientApplicationDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search for Jobs</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body class="container mt-5">

<h2 class="text-center text-success mb-4">Find Your Next Job</h2>

<!-- Search Form -->
<form action="SearchJob.jsp" method="post" class="mb-4">
    <div class="input-group">
        <input type="text" class="form-control" name="domain" placeholder="Search by Domain (e.g., IT, Finance)..." required>
        <input type="hidden" name="username" value="testUser"> <!-- ✅ Replace with logged-in user -->
        <button class="btn btn-success" type="submit">Search</button>
    </div>
</form>

<!-- Job Results -->
<table class="table table-striped table-bordered">
    <thead class="table-dark">
        <tr>
            <th>Job ID</th>
            <th>Job Name</th>
            <th>Company ID</th>
            <th>Job Type</th>
            <th>Experience (Yrs)</th>
            <th>Apply</th>
        </tr>
    </thead>
    <tbody>
   <%
    String domain = request.getParameter("domain");
    if (domain != null && !domain.isEmpty()) {
        ClientApplicationDAO adao = new ClientApplicationDAO();
        ResultSet rs = adao.searchJobsByDomain(domain);

        while (rs.next()) {
%>
<tr>
    <td><%= rs.getInt("JOBID") %></td>
    <td><%= rs.getString("JOBNAME") %></td>
    <td><%= rs.getInt("COMPANYID") %></td>
    <td><%= rs.getString("JOBTYPE") %></td>
    <td><%= rs.getInt("YEAREXP") %></td>
    <td>
    <form action="ClientJobApplyServe" method="post">
        <input type="hidden" name="username" value="<%= session.getAttribute("username") %>">
        <input type="hidden" name="jobid" value="<%= rs.getInt("JOBID") %>">
        <input type="hidden" name="jobtype" value="<%= rs.getString("JOBTYPE") %>">
        <input type="hidden" name="applydt" value="<%= java.time.LocalDate.now() %>">
        <button type="submit" class="btn btn-success btn-sm">Apply</button>
    </form>
</td>

</tr>
<%
        }
    }
%>

    </tbody>
</table>

</body>
</html>
