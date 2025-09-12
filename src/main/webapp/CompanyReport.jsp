<%@page import="master.dao.CompanyDao"%>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Report</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary" style="text-align:center;"> LIST OF COMPANIES</h2>
<table class="table table-hover table-stripped table-bordered">
<thead class="table-dark">
<tr>
<th>COMPANY ID</th>
<th>COMPANY NAME</th>
<th>PHONE NO</th>
<th>EMAIL</th>
<th>ADDRESS</th>
</tr>
</thead>
<%
 CompanyDao cdao = new CompanyDao();
 ResultSet rs = cdao.getData();
%>
<tbody>
<%
 while(rs.next()) {
%>
<tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>
</tr>
<%
 }
%>
</tbody>

</table>
</div>
</body>
</html>