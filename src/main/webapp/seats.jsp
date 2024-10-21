<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
  .profile-image {
	width: 50px; /* Adjust the width as needed */
	height: auto; /* Maintain aspect ratio */
   }
 


  body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        /* background-color: #F6FAFF;
  min-height: 100vh; */
       
    }
    .header .header-inner {
        position: fixed;
        top: 0;
        z-index: 99;
    }
    a {
        padding: 5px; /* Add padding to create space around the anchor tags */
        margin-right: 30px;
        margin-top: 20px;
    }
    .container {
        display: flex;
        flex-direction: column;
        /* margin: 20px;
        padding-left: 30px; */
    }
    .left-column, .right-column {
        flex: 1;
        margin: 10px;
    }
    .left-column img {
        max-width: 100%;
        height: auto;
        margin-top: 0px;
        padding-top: 40px
    }
    .sat {
        text-decoration: none;
        color: black;
            background-image:url("Project_Img/solt.jpeg");

        border: 1px solid black;
        padding: 30px;
       display: block;
         margin-bottom: 10px;
        display: inline-block;
    }
     .all_plots {
        display: flex;
        flex-wrap: wrap;
        gap: 10px; /* Adjust the gap between items */
    }

   

    
    
    .footer .footer-top:before {
    position: absolute;
    content: "";
    left: 0;
    top: 0;
    height: 122%;
    width: 100%;
    background: #000;
    opacity: 0.1;
}

@media (min-width:768px) {
    .container {
        max-width: 86%;
    }
	.header .main-menu {
    display: block;
    }
        .col-sm-12 {
        flex:  1 50%;
        max-width: 100%;
        font-size: 16px;
    }
    .main-menu.a{
    	font-size: 50px;
    }
    .header .nav li a {
        font-size: 21px;
        font-weight: 500;
        padding: 20px 4px;
    }
        .header .top-contact li {
        display: inline-block;
        margin-right: 25px;
        color: #2C2D3F;
        font-size: 14px;
    }
    .header .top-contact li a {
        font-size: 11px;
    }
    .header .topbar {
    padding: 15px 0;
    margin-left: 263px;
}
.col-12 {
    -ms-flex: 0 0 100%;
    flex: 0 0 100%;
    display: contents;
    max-width: 100%;
}
 .header .logo {
    float: left;
    margin-top: 26px;
    width: 242px;
}
.left-column img {
    max-width: 100%;
    height: auto;
    margin-top: -26px;
    padding-top: 40px;
}
    .all_plots .sat {
            flex: 1 1 calc(33.3333% - 10px); /* 3 items per row for mobile */
        }
    .footer .footer-top {
        padding: 20px;
    }
    .footer .footer-top:before 
{
height: 0%;
}
}

@media (min-width:576px) {
    .container {
        max-width: 86%;
    }
    .col{
    margin-top: 40px;
}
        .col-sm-12 {
        flex: 1 100%;
        max-width: 100%;
        font-size: 25px;
    }
    .main-menu.a{
    	font-size: 50px;
    }
      .all_plots .sat {
            flex: 1 1 calc(33.3333% - 10px); /* 3 items per row for mobile */
        }
    .footer .footer-top {
        padding: 20px;
    }
    .footer .footer-top:before 
{
height: 0%;
}
}


@media (min-width:1024px) {
    .container {
        max-width: 960px
    }
    .col{
    margin-top: 5px;
}
    .col-sm-12 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 25px;
    }
    .imgs{
        height: 90%;
    width: 90%;
/*     padding: 30px;
 */    padding-left: 80px;
    }
      .all_plots .sat {
            flex: 1 1 calc(15% - 10px); /* 5 items per row for laptops and above */
        }
    .footer .single-footer {
    margin: 20px;
    font-size: 20px;
            width: 27%;
}
}

@media (min-width:1400px) {
    .container {
        max-width: 90%;
        padding: 10px;
    }
    .col{
    margin-top: 2px;
}
    .get-quote {
    margin-top: 12px;
    margin-left: 437px;
}
    .imgs{
        height: 90%;
    width: 90%;
/*     padding: 30px;
 */    padding-left: 100px;
    }
    .col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
    }
    .right-column{
    padding-left: 10px;
/*     padding-right: 200px;
 */    }
      .all_plots .sat {
            flex: 0 1 calc(12% - 10px); /* 5 items per row for laptops and above */
          margin-left: 30px;
         margin-right: 30px;
        }
        .all_plots {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    padding: -1px;
    margin-left: 145px;
}
    .footer .single-footer {
    margin: 20px;
    font-size: 20px;
}
 
.footer .footer-top:before 
{
height: 0%;
}
}
@media only screen and (min-width: 768px) and (max-width: 991px) {
    .header .header-inner .get-quote {
        margin-top: 12px;
        display: inline-block;
        margin: 0;
    }
    .header .logo {
    float: left;
    margin-top: 26px;
    width: 242px;
}
.col-12 {
    -ms-flex: 0 0 100%;
    flex: 0 0 100%;
    display: contents;
    max-width: 100%;
}
.col{
    margin-top: 15px;
}
    }

</style>
</head>
<body>

<!-- Header Area -->
	
<%@include file="header.jsp"%>

<%
    Integer numSeatsInteger = (Integer) session.getAttribute("numSeats");
    String check = (String) session.getAttribute("check");
    String pimg = request.getParameter("pimg");
    String pno = request.getParameter("pno");
    String pname = request.getParameter("pname");

    numSeatsInteger = Integer.parseInt(pno);

    System.out.println("img name numSeatsInteger var = " + numSeatsInteger);
    System.out.println("project name var = " + pname);
    System.out.println("and plot no = " + pno);
    System.out.println("and numSeatsInteger = " + numSeatsInteger);
    System.out.println("seatno in jsp =" + check);

    if (numSeatsInteger != null || check != null) {
%>
<div class="container">
    <div class="left-column">
        <!-- Add your image here -->
        <div class="col">
                <a href="ProjectList.jsp" class="icofont-arrow-left back-button"  role="button"  style="font-size: 50px; "></a>
        </div>
        <div class="col-md-12 col-sm-12 col-lg-12">
        <img class="imgs" src="Project_Img/<%= pimg %>" width="100%">
        </div>
    </div>

    <div class="right-column">
    
<!--    	   <button type="submit" class="icofont-arrow-left back-button"  style="font-size: 50px" ></button>
 -->   
        
        
        <%
            if (numSeatsInteger != 0) {
                int n = numSeatsInteger; // Convert Integer to int
                System.out.println("variable n value" + n);
        %>
        
        <div class="all_plots">
        <%
            for (int i = 1; i <= n; i++) {
        %>
<a href="#" class="sat" onclick="submitForm(<%= i %>)" style="text-align: center;">Plot <%= i %></a>
<form id="form<%= i %>" action="SeatNo" method="post" style="display: none;">
    <input type="hidden" name="SN" value="<%= i %>">
    <input type="hidden" name="pno" value="<%= pno %>">
    <input type="hidden" name="pimg" value="<%= pimg %>">
    <input type="hidden" name="pname" value="<%= pname %>">
</form>

<script>
    function submitForm(plotNumber) {
        document.getElementById('form' + plotNumber).submit();
    }
</script>

        <%
                System.out.println(pname);
            }
        %>
        </div>
        <%
            } else {
        %>
        <p>No seats generated yet</p>
        <%
            }
        %>
    </div>
</div>
<%
    } else
    {
        response.sendRedirect("Agent_Login.jsp");
    }
%>

<%@include file="footer.jsp"%>
</body>
</html>