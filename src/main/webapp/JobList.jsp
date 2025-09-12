<%@ page import="java.sql.*" %>
<%@ page import="master.utilities.ConnectionFactory" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job List</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body class="container mt-5">

<h2 class="text-center text-primary mb-4">Job List</h2>

<table class="table table-bordered table-hover table-striped">
    <thead class="table-dark">
        <tr>
            <th>Job ID</th>
            <th>Job Name</th>
            <th>Job Type</th>
            <th>Domain</th>
            <th>Valid Upto</th>
            <th>Years Exp</th>
            <th>Company ID</th>
        </tr>
    </thead>
    <tbody>
    <%
        try {
            ConnectionFactory con = new ConnectionFactory();
            Connection cn = con.getConn();
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM job");

            while(rs.next()){
    %>
        <tr>
            <td><%= rs.getInt("JOBID") %></td>
            <td><%= rs.getString("JOBNAME") %></td>
            <td><%= rs.getString("JOBTYPE") %></td>
            <td><%= rs.getString("DOMAIN") %></td>
            <td><%= rs.getDate("VALIDUPTO") %></td>
            <td><%= rs.getInt("YEAREXP") %></td>
            <td><%= rs.getInt("COMPANYID") %></td>
        </tr>
    <%
            }
            rs.close();
            st.close();
            cn.close();
        } catch(Exception e) {
            out.println("<tr><td colspan='7' class='text-danger'>Error: "+e.getMessage()+"</td></tr>");
        }
    %>
    </tbody>
</table>

</body>
</html>
