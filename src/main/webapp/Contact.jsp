<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

<style>
    body {
        background: linear-gradient(135deg, #667eea, #764ba2);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        min-height: 100vh;
        margin: 0;
        padding: 0;
    }
    .sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        top: 0;
        left: 0;
        background-color: #222;
        overflow-x: hidden;
        transition: 0.4s;
        padding-top: 60px;
        z-index: 2;
    }
    .sidebar a {
        padding: 12px 20px;
        text-decoration: none;
        font-size: 18px;
        color: #ddd;
        display: block;
        transition: 0.3s;
    }
    .sidebar a:hover {
        background-color: #444;
        color: #fff;
    }
    .sidebar .closebtn {
        position: absolute;
        top: 10px;
        right: 20px;
        font-size: 30px;
        color: #fff;
        cursor: pointer;
    }
    .openbtn {
        font-size: 22px;
        cursor: pointer;
        background: #764ba2;
        color: white;
        padding: 10px 15px;
        border: none;
        position: absolute;
        top: 15px;
        left: 15px;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }
    .contact-box {
        width: 65%;
        margin: 100px auto;
        background: #fff;
        padding: 40px;
        border-radius: 25px;
        box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
    }
    .contact-box h2 {
        font-weight: bold;
        margin-bottom: 25px;
        color: #764ba2;
        text-align: center;
    }
    .form-control {
        margin-bottom: 20px;
        border-radius: 12px;
        padding: 12px;
        border: 1px solid #ccc;
    }
    .btn-custom {
        width: 100%;
        border-radius: 12px;
        padding: 12px;
        font-weight: bold;
        background: #667eea;
        border: none;
        color: white;
        transition: 0.3s;
    }
    .btn-custom:hover {
        background: #764ba2;
    }
    .footer {
        margin-top: 40px;
        padding: 30px;
        background: #667eea;
        color: white;
        border-radius: 15px;
    }
    .footer h5 {
        margin-bottom: 15px;
        font-size: 20px;
        font-weight: bold;
    }
    .footer a {
        display: inline-block;
        color: #fff;
        font-size: 16px;
        margin: 8px 15px;
        text-decoration: none;
        transition: 0.3s;
    }
    .footer a:hover {
        color: #d1e7ff;
    }
    .footer .icon {
        margin-right: 8px;
    }
</style>
</head>
<body>
<!-- Sidebar -->
<div id="mySidebar" class="sidebar">
    <span class="closebtn" onclick="closeNav()">&times;</span>
    <a href="Index.jsp">🏠 Home</a>
    <a href="Login.jsp">🔑 Login</a>
    <a href="Register.jsp">📄 Register</a>
    <a href="About.jsp">ℹ About</a>
    <a href="Contact.jsp">📞 Contact</a>
</div>

<!-- Menu Button -->
<button class="openbtn" onclick="openNav()">☰ Menu</button>

<div class="contact-box">
    <h2>Contact Us</h2>

    <!-- ✅ Popup messages -->
    <%
        String status = request.getParameter("status");
        if("success".equals(status)) {
    %>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            ✅ Your message has been sent successfully!
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <%
        } else if("error".equals(status)) {
    %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            ❌ Oops! Something went wrong. Please try again.
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    <%
        }
    %>

    <form action="ContactServe" method="post">
        <input type="text" class="form-control" name="name" placeholder="Your Name" required/>
        <input type="email" class="form-control" name="email" placeholder="Your Email" required/>
        <textarea class="form-control" name="message" rows="5" placeholder="Your Message" required></textarea>
        <input type="submit" class="btn btn-custom" value="Send Message"/>
    </form>

    <!-- Footer -->
    <div class="footer">
        <h5><i class="fab fa-whatsapp icon"></i> WhatsApp Contacts</h5>
        <a href="https://wa.me/918391044005" target="_blank"><i class="fab fa-whatsapp"></i> 8391044005</a>
        <a href="https://wa.me/917908758858" target="_blank"><i class="fab fa-whatsapp"></i> 7908758858</a>
        <a href="https://wa.me/917029792038" target="_blank"><i class="fab fa-whatsapp"></i> 7029792038</a>
        <a href="https://wa.me/919144301104" target="_blank"><i class="fab fa-whatsapp"></i> 9144301104</a>
        <a href="https://wa.me/919907504153" target="_blank"><i class="fab fa-whatsapp"></i> 9907504153</a>

        <hr style="border-color: rgba(255,255,255,0.5); margin: 25px 0;">

        <h5><i class="fab fa-linkedin icon"></i> LinkedIn Profiles</h5>
        <a href="https://www.linkedin.com/in/anindita-chatterjee-44253528b" target="_blank"><i class="fab fa-linkedin"></i> Anindita Chatterjee</a>
        <a href="https://www.linkedin.com/in/aniket-gorai-677512298" target="_blank"><i class="fab fa-linkedin"></i> Aniket Gorai</a>
        <a href="https://www.linkedin.com/in/anirban-maji-4b3951291" target="_blank"><i class="fab fa-linkedin"></i> Anirban Maji</a>
        <a href="https://www.linkedin.com/in/aditya-kumar-09a71228b" target="_blank"><i class="fab fa-linkedin"></i> Aditya Kumar</a>
        <a href="https://www.linkedin.com/in/rahul-srivastava-775512384" target="_blank"><i class="fab fa-linkedin"></i> Rahul Srivastava</a>
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