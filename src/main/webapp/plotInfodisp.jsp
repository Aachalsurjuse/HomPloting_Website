<%@page import="com.Pojo.Plot_Details"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plot Information</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="/css/plotinfodisp.css"></link>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Site keywords here">
<meta name="description" content="">
<meta name='copyright' content=''>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon -->
<link rel="icon" href="img/favicon.png">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

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
.profile-image {
    width: 50px; /* Adjust the width as needed */
    height: auto; /* Maintain aspect ratio */
}
body {
    background-color: #F1F1EF;
    background-size: cover;
    font-size: large;
    margin-top: 2%;
}
.header .header-inner {
    position: fixed;
    top: 0;
    z-index: 99;
}
.header .topbar {
    padding: 15px 0;
    display: none;
}
.header .top-contact li:last-child {
    margin-right: 0;
    font-size: 0px;
}
.container1 {
    padding: 20px;
    background-color: white;
    border: 1px solid #ccc;
    border-radius: 8px;
    margin-bottom: 20px;
}
.back-button {
    position: absolute;
    top: 100px;
    left: 20px; /* Adjust left position as needed */
    font-size: 30px; /* Adjust font size as needed */
    background-color: transparent;
    border: none;
    cursor: pointer;
    color: #007bff; /* Adjust color as needed */
}
.back-button:hover {
    color: #0056b3; /* Adjust hover color as needed */
}
.print-button {
    position: absolute;
    top: 100px;
    right: 20px; /* Adjust right position as needed */
    font-size: 30px; /* Adjust font size as needed */
    background-color: transparent;
    border: none;
    cursor: pointer;
    color: #007bff; /* Adjust color as needed */
}
.print-button:hover {
    color: #0056b3; /* Adjust hover color as needed */
}

@media only screen and (max-width: 576px) {
    body {
        background-size: 100%; /* Adjust background size based on content */
        font-size: 18px; /* Increase font size for mobile view */
    }
    .back-button {
        font-size: 32px;
        margin-top: 130px;
        margin-left: -28px;
    }
    .container1 {
        padding-left: 15px;
        margin-bottom: 64px;
        margin-top: 181px;
    }
    .plot-info .col-12 {
        margin-bottom: 15px;
    }
    .print-button{
    font-size: 63px;
    /* margin-bottom: 500px; */
    margin-top: 78px;
    /* margin-left: 136px; */
}
    }
}
@media only screen and (max-width: 767px)
{
.header .main-menu {
        display: inline-block;
    }
}

@media only screen and (max-width: 767px) {
    .header .main-menu {
        display: block;
    }
    .header .header-inner .get-quote .btn {
        color: #fff;
        margin: 0;
        display: inline-block;
        padding: 0;
        font-size: 19px;
        padding-right: 9px;
        padding-left: 7px;
    }
    .header .header-inner .get-quote {
        margin: 0;
        padding: 0;
        margin-top: -124px;
        margin-left: 141px;
    }
    p {
        color: #757575;
        margin: 0;
        line-height: 24px;
        font-weight: 400;
        margin-bottom: 4px;
    }
    .footer .single-footer p {
        color: #fff;
        text-decoration: none;
        font-size: 22px;
        word-wrap: 10px;
        word-spacing: 3px;
    }
}
@media only screen and (min-width: 577px) and (max-width: 991px) {
    .container1 {
        margin-bottom: 246px;
        margin-top: 61px;
    }
    p {
        color: #757575;
        margin: 0;
        line-height: 24px;
        font-weight: 400;
        margin-bottom: 64px;
        margin-top: 12px;
    }
    .back-button {
        font-size: 23px;
        margin-top: -53px;
        margin-left: -27px;
    }
    body {
        background-size: 300%; /* Adjust background size based on content */
        font-size: 25px; /* Increase font size for tablet view */
        margin-top: 99px;
    }
    .h5, h5 {
        font-size: 25px;
        margin-top: 8px;
    }
    .btn-danger {
        padding: 10px;
        font-size: 23px;
    }
    .h3, h3 {
        font-size: 43px;
    }
    .header .nav li a {
        font-size: 25px;
        font-weight: 500;
        padding: 20px 4px;
    }
    .header .main-menu {
        display: block;
    }
    .header .header-inner .get-quote {
        margin-top: 12px;
        display: inline-block;
        margin: 0;
        margin-left: 597px;
    }
    .header .logo {
        float: left;
        margin-top: 26px;
        width: 242px;
    }
}

@media only screen and (min-width: 1024px) {
    .container1 {
        background-size: 90%;
        margin-bottom: 463px;
        margin-top: 173px;
    }
    .header .header-inner .get-quote {
        margin-top: 12px;
        display: contents;
        margin: 0;
        margin-left: 544px;
    }
    .get-quote .btn {
        color: #fff;
        margin-left: -27px;
    }
    .col-lg-2 {
        -ms-flex: 0 0 16.666667%;
        flex: 0 0 16.666667%;
        max-width: 16.666667%;
        margin-top: 15px;
    }
    .header .nav li a {
        color: #2C2D3F;
        font-size: 20px;
        font-weight: 500;
        text-transform: capitalize;
        padding: 25px 12px;
        position: relative;
        display: inline-block;
        position: relative;
    }
    p {
        color: #757575;
        margin: 0;
        line-height: 24px;
        font-weight: 400;
        margin-bottom: 41px;
    }
    h1, h2, h3, h4, h5, h6 {
        font-weight: 500;
        color: #2C2D3F;
        margin-top: 10px;
        margin-bottom: 9px;
    }
}

 @media print {
            body * {
                visibility: hidden;
            }
     
            .container1, .container1 * {
                visibility: visible;
            }
            
           .container1 {
    padding: 20px;
    background-color: white;
    border: 1px solid #ccc;
    border-radius: 8px;
    margin-bottom: 20px;
}
.row {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    flex-direction: row;
}
            
            .back-button, .print-button {
                display: none;
            }
        }
</style>
<script>
function printPage() {
    window.print();
}
</script>
</head>
<body>
<%@include file="header.jsp"%>
<%
    List<Plot_Details> snParam = (ArrayList<Plot_Details>) session.getAttribute("snParam");
    String pimg = (String) session.getAttribute("pimg");
    String pname = (String) session.getAttribute("pname");
    String pno = (String) session.getAttribute("pno");
%>

<br><br>

<div style="text-align: center;">
    <form action="seats.jsp" method="post" style="display: inline;">
        <input type="hidden" name="pno" value="<%= pno %>">
        <input type="hidden" name="pimg" value="<%= pimg %>">
        <input type="hidden" name="pname" value="<%= pname %>">
        <button type="submit" class="icofont-arrow-left back-button" style="font-size: 50px"></button>
    </form>
    <button class="print-button" style="font-size: 50px;" onclick="printPage()">🖨️</button>
</div>

<br><br>

<%
    for (Plot_Details p : snParam) {
%>
<div class="container1 border mx-auto" style="max-width: 800px;">
    <div class="row overflow-hidden plot-info">
        <div class="col-12 col-md-4">
            <h5>Plot</h5>
            <p><%= p.getSN() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Buyer Name</h5>
            <p><%= p.getBuyer_Name() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Available Status</h5>
            <p><%= p.getAvailable_status() %></p>
        </div>
        <br><br>
        <div class="col-12 col-md-4">
            <h5>Payment Status</h5>
            <p><%= p.getPayment_status() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Paid Amount</h5>
            <p><%= p.getPaid_Amount() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Plot Prize</h5>
            <p><%= p.getPlot_Prize() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Plot Size</h5>
            <p><%= p.getPlot_Size() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Direction</h5>
            <p><%= p.getDirection() %></p>
        </div>
        <div class="col-12 col-md-4">
            <h5>Date</h5>
            <p><%= p.getDate() %></p>
        </div>
    </div>
</div>
<%
    }
%>

<%@include file="footer.jsp"%>
</body>
</html>
