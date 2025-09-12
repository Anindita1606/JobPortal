<%@page import="master.dao.CompanyDao"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADDING COMPANY</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<style>
    body {
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .comp-container {
        width: 450px;
        margin: 80px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        text-align: center;
    }
    .comp-container h2 {
        font-weight: bold;
        margin-bottom: 25px;
        color: #333;
    }
    .form-control {
        margin-bottom: 20px;
        border-radius: 12px;
        padding: 12px;
    }
</style>
</head>
<body>
<div class="comp-container">
    <form action="AddCompanyServe" method="post">
        <h2>add a company</h2>
        
        <input type="number" class="form-control" name="compid" placeholder="COMPANY ID" />
        <input type="text" class="form-control" name="compnm" placeholder="COMANY NAME" required/>
        <input type="text" class="form-control" name="phno" placeholder="PHONE NO" required/>
        <input type="email" class="form-control" name="email" placeholder="EMAIL" required/>
        <input type="text" class="form-control" name="addr" placeholder="ADDRESS" required/>
        
        <input type="submit" class="btn btn-primary btn-custom" value="SAVE"/>
        
    </form>
</div>

</body>
</html>