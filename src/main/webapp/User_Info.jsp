<%@page import="com.Pojo.User"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="icon" href="img/favicon.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    
    
    <!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Site keywords here">
<meta name="description" content="">
<meta name='copyright' content=''>
<meta name="viewport"
content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title -->
<title>Mediplus - Free Medical and Doctor Directory HTML
	Template.</title>

<!-- Favicon -->


<link rel="icon" href="img/favicon.png">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="css/nice-select.css">
<!-- Font Awesome CSS -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- icofont CSS -->
<link rel="stylesheet" href="css/icofont.css">
<!-- Slicknav -->
<link rel="stylesheet" href="css/slicknav.min.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet" href="css/owl-carousel.css">
<!-- Datepicker CSS -->
<link rel="stylesheet" href="css/datepicker.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="css/animate.min.css">
<!-- Magnific Popup CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Medipro CSS -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">
    
    <style type="text/css">
    
    /* General styles */
.profile-image {
	display: none;
} 
.header .header-inner {
    position: fixed;
    top: 0;
    z-index: 99;
    width: 100%;           
    background: #fff;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    padding: 10px;
}
/* Footer Styles */
footer {
    background-color: #f1f1f1;
    padding: 20px 0;
    text-align: center;
    position: relative;                  
    bottom: 0;
    width: 100%;
}
.container, .container-lg, .container-md, .container-sm {
    max-width: 960px;
    text-align: left;
}
.footer-content {    
    display: flex;
    flex-direction: column;
    align-items: center;
}

.footer-section {
    margin: 10px 0;
}           
                                      
.footer-section h5 {
    font-size: 20px;                    
}

.footer-section p,
.footer-section ul {
    font-size: 16px;
    list-style: none;
    padding: 0;
    margin: 0;
}
.containers{
    text-align: left;
    padding: 10px;
}

body {
    font-family: none;
    background-color: #f8f9fa;
}

.card {
    margin-top: 20px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
}

.card-header {
    background-color: #008ggg;
    color: white;
    padding: 10px;
    text-align: center;
}

.card-body {
    padding: 20px;
}

/* Popup Styles */
.popup {
    display: none;
    position: fixed;  
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;               
    height: 100%;
    background-color: rgba(0, 0, 0, 0.4);
    padding-left: 5%;
    padding-right: 5%;
    overflow: hidden;
}
.popup-content {
    background-color: #fff;
    margin: 10% auto;
    padding: 20px;
    border: 1px solid #888;
    border-radius: 10px;
    width: 90%;
    max-width: 500px;       
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);           
}
.close {
    color: #aaa;
    float: right;
    font-size: 28px;              
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
 
/* Button Styling */
.btn-custom {
    background-color: #007bff;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    transition: background-color 0.3s ease;
}
.btn-custom:hover {
    background-color: #0056b3;
}

/* Form Styling */
form {
    text-align: center;
    background-image: linear-gradient(to top, #A18CD1 0%, #FBC2EB 100%);
    padding: 30px 20px;
    border-radius: 10px;
}
.form-control {
    margin-bottom: 15px;
    width: 100%;
    max-width: 400px;
    margin-left: auto;
    margin-right: auto;
}

.col-md-4{
	text-align: left;
	font-size: 20px;
    font-family: none;
}
.input-label {
    font-weight: 400;
    margin-bottom: 5px;
    font-size: 18px;
}

@media (max-width: 768px) {
    .card {
        margin-top: 40px;
    }
    .mb-3 {
        margin-bottom: 1rem !important;
    }
}
@media only screen and (max-width: 767px) {
    .header .main-menu {
        display: inline-block;
    }
    .header .nav li a {
    color: #2C2D3F;
    font-size: 12px;
    font-weight: 500;
    text-transform: capitalize;
    padding: 25px 12px;
    position: relative;
    display: inline-block;
    position: relative;
    margin-left: -13px;
}
    .header .header-inner .get-quote .btn {
        color: #fff;
        display: inline-block;
        margin: 0;
        padding: 0;
        /* margin-bottom: -15px; */
        margin-top: -25px;
        margin-left: 233px;
        padding: 3px;
    }
        .header .header-inner .get-quote {
        margin: 0;
        padding: 0;
        margin-top: -36px;
    }
     .offset-md-2 {
       margin-left: -0.333333%;
        margin-bottom: 190px;
        margin-top: 48px;
    }
}
@media (min-width: 768px) {
    .offset-md-2 {
        margin-left: 16.666667%;
        margin-bottom: 254px;
        margin-top: 58px;
    }
    
    .header .nav li a {
        font-size: 19px;
        font-weight: 500;
        padding: 20px 4px;
    }
     .header .header-inner .get-quote .btn {
        color: #fff;
        display: inline-block;
        margin: 0;
        padding: 0;
        /* margin-bottom: -15px; */
        margin-top: -84px;
        margin-left: 598px;
        padding: 6px;
    }
        .header .header-inner .get-quote {
        margin-top: 12px;
        display: inline-block;
        margin: 0;
       
    }
}
    
    @media (min-width: 1024px) {
     .offset-md-2 {
       margin-left: 16.666667%;
        margin-bottom: 396px;
        margin-top: 144px;
    }
    
    .header .nav li a {
        font-size: 19px;
        font-weight: 500;
        padding: 20px 4px;
    }
     .header .header-inner .get-quote .btn {
        color: #fff;
        display: inline-block;
        margin: 0;
        padding: 0;
        margin-bottom: -41px;
        
        padding: 6px;
    }
        .header .header-inner .get-quote {
        margin-top: 12px;
        display: inline-block;
        margin: 0;
       
    }
    }
    
    </style>
</head>
<body>
    <%@include file="header.jsp"%>

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">Profile Info</h3>
                    </div>
                    <div class="card-body">
                        <%
                        String check = (String) session.getAttribute("check");
                        if (check != null) {
                            ArrayList<User> users = (ArrayList<User>) session.getAttribute("users");
                            for (User u : users) {
                        %>
                        <div class="row mb-3">
                            <div class="col-md-4 mb-3 mb-md-0">
                                <p class="mb-3">Name</p>
                            </div>
                            <div class="col-md-8">
                                <p class="input-label"><%= u.getFullname() %></p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4 mb-3 mb-md-0">
                                <p class="mb-3">Mobile No</p>
                            </div>
                            <div class="col-md-8">
                                <p class="input-label"><%= u.getMobNo() %></p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4 mb-3 mb-md-0">
                                <p class="mb-3">Address</p>
                            </div>
                            <div class="col-md-8">
                                <p class="input-label"><%= u.getAddress() %></p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4 mb-3 mb-md-0">
                                <p class="mb-3">Password</p>
                            </div>
                            <div class="col-md-8">
                                <p class="input-label"><%= u.getPassword() %></p>
                            </div>
                        </div>
                        <div class="d-flex justify-content-end">
                            <button class="btn btn-custom" id="editinfo">Edit Profile Info</button>
                        </div>
                        <div id="popupDialog" class="popup">
                            <div class="popup-content">
                                <span class="close">&times;</span>
                                <h2 class="text-center">Edit User Info</h2>
                                <form action="editProfileInfo?SN=<%= u.getSN() %>" method="post" onsubmit="return validateForm()">
                                    <input type="text" name="Name" value="<%= u.getFullname() %>" class="form-control mb-3" required>
                                    <input type="number" id="number" name="number" value="<%= u.getMobNo() %>" class="form-control mb-3" required>
                                    <input type="text" name="Address" value="<%= u.getAddress() %>" class="form-control mb-3" required>
                                    <input type="password" id="pass" name="pass" value="<%= u.getPassword() %>" class="form-control mb-3" required>
                                    <input type="submit" value="Submit" role="button" class="btn btn-primary">
                                </form>
                            </div>
                        </div>
                        <% }} else { %>
                        <% response.sendRedirect("index.jsp"); %>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
    </div>

    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-yvz8z..."></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-rGwhP9Xy..."></script>
    <script>
        var editinfo = document.getElementById("editinfo");
        var popup = document.getElementById("popupDialog");
        var closeButton = document.querySelector(".close");

        editinfo.addEventListener("click", function() {
            popup.style.display = "block";
        });

        closeButton.addEventListener("click", function() {
            popup.style.display = "none";
        });

        window.addEventListener("click", function(event) {
            if (event.target === popup) {
                popup.style.display = "none";
            }
        });

        function validateForm() {
            var uname = document.getElementsByName("Name")[0].value;
            var uMob = document.getElementsByName("number")[0].value;
            var upass = document.getElementsByName("pass")[0].value;

            var nameRegex = /^[a-zA-Z\s]+$/;
            var uMobRegex = /^\d{10}$/;
            var upassRegex = /^(?=.*[!@#$%^&*])(?=.*[A-Z]).{8,}$/;

            if (!nameRegex.test(uname)) {
                alert("Name should contain only alphabets.");
                return false;
            }

            if (!uMobRegex.test(uMob)) {
                alert("Please enter a 10-digit mobile number.");
                return false;
            }

            if (!upassRegex.test(upass)) {
                alert("Password must be at least 8 characters long, contain at least one special symbol (!@#$%^&*), and at least one uppercase letter.");
                return false;
            }

            return true;
        }
    </script>
    
    <div class="foot">
        <%@include file="footer.jsp"%>
    </div>
</body>
</html>
