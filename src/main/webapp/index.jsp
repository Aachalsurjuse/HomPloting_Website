<%@page import="com.Pojo.AddMoreInfo"%>
<%@page import="com.connectionFacotry.Connection_Factory"%>

<%@page import="com.Pojo.ProjectImages"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Dao.ReadImp"%>
<%@page import="java.util.List"%>
 <%@page import="com.mysql.cj.Session"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
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
.profile-image {
	width: 50px; /* Adjust the width as needed */
	height: auto; /* Maintain aspect ratio */
}
.imp{
background: #1A76D1;
margin: 10px;
}
.topbar{
display: none;
}
img {
    height: auto;
    max-width: 100%;
    margin-bottom: 34px;
}
@media only screen and (min-width: 320px) {
    .header .header-inner .get-quote {
        margin: 0;
        /* margin-bottom: -24px; */
        padding: 0;
        margin-top: -52px;
        margin-left: 179px;
    }
        .header .header-inner .get-quote .btn {
        color: #fff;
        display: inline-block;
        margin: 0;
        padding: 5px;
        margin-left: 68px;
        margin-top: 22px;
    }
    .profile-image {
    width: 34px;
    height: auto;
}
        .slicknav_menu {
        display: block;
        background: transparent;
        padding: 0;
        margin-right: 350px;
    }
}
@media only screen and (min-width: 375px) {
.header .header-inner .get-quote .btn {
       
        margin-left: 100px;
        padding: 5px
    }
}
@media only screen and (min-width: 425px) {
.header .header-inner .get-quote .btn {
       
        margin-left: 172px;
        padding: 5px
    }
}
@media only screen and (min-width: 768px) {
.header .header-inner .get-quote .btn {
       margin-left: 50px;
        margin-bottom: 10px;
        padding: 7px;
        margin-top: -70px;
    }
     .profile-image {
        width: 35px;
        height: auto;
        margin-bottom: 10px;
}
.col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
        background: #1A76D1;
        margin: 10px;
    }
    .setbg{
    	background: white;;
    }
}
@media only screen and (max-width: 767px) {
    .header .slicknav_nav {
        margin-top: 65px;
        display: inline-block;
    }
}
@media only screen and (min-width: 768px) and (max-width: 991px) {
    .header .header-inner .get-quote {
        margin-top: 12px;
        display: inline-block;
        margin: 0;
        /* margin-top: -20px; */
        /* margin-bottom: -11px; */
        margin-left: 587px;
    }
    .slicknav_btn {
    margin: 5px 5px 6px;
    text-decoration: none;
    text-shadow: 0 1px 1px rgba(255, 255, 255, .75);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    background-color: #222;
    display: none;
}
.col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
    }

}

@media only screen and (min-width: 1024px)
{

.slicknav_btn {
    margin: 5px 5px 6px;
    text-decoration: none;
    text-shadow: 0 1px 1px rgba(255, 255, 255, .75);
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    background-color: #222;
    display: none;
}
    .header .header-inner .get-quote .btn {
        color: #fff;
        display: inline-block;
        margin: 0;
        padding: 10px;
        margin-left: 0px;
        margin-bottom: 24px;
        margin-top: 24px;
        font-size: 15px;
    }
 
    .profile-image {
    width: 45px;
    height: auto;
    margin-top: 10px;
}
 .header .header-inner .get-quote {
        margin-top: 12px;
        display: contents;
        margin: 0;
        /* margin-top: -20px; */
        /* margin-bottom: -11px; */
        margin-left: 587px;
    }
    .col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
        margin: 10px;
    }
    .footlogo{
   	padding-bottom: 10px;
   	padding-top: 10px;
    }
}
</style>

<script >
function validateForm() {
    var name = document.getElementsByName("name")[0].value;
    var phone = document.getElementsByName("phone")[0].value;

    var nameRegex = /^[a-zA-Z\s]+$/;
    var phoneRegex = /^\d{10}$/;
    if (!nameRegex.test(name)) {
        alert("Name should contain only alphabets.");
        return false;
    }

    if (!phoneRegex.test(phone)) {
        alert("Please enter a 10-digit mobile number.");
        return false;
    }

   

    return true;
}


 </script>
 <style type="text/css">
 	@media only screen and (max-width: 1024px) 
{
.row
{
flex-direction: row;
background-color: #ff000000;
}
 .slider .single-slider:before {
   opacity: 0;
 }
}


 </style>
</head>
<body>
 

     <%
	String cont = (String) session.getAttribute("apoint");
	//display the popup when user entered after login
	%>
	<% 
	System.out.println("cont "+cont);
	if (cont != null) {
	%>
	<script type="text/javascript">
		alert("Apoind sucessfully");
	</script>
	<%
	request.getSession().removeAttribute("apoint");

	}
	%>
	<div class="preloader">
		<div class="loader">
			<div class="loader-outter"></div>
			<div class="loader-inner"></div>

			<div class="indicator">
				<svg width="16px" height="12px">
                        <polyline id="back"
						points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                        <polyline id="front"
						points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                    </svg>
			</div>
		</div>
	</div>


	<!-- Header Area -->
	<header class="header">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-5 col-12">
						<!-- Contact -->
						<ul class="top-link">
							<li><a href="#"></a></li>
							<!-- <li><a href="#">Doctors</a></li> -->
							<li><a href="#"></a></li>
							<li><a href="#"></a></li>
						</ul>
						<!-- End Contact -->
					</div>
					<div class="col-lg-6 col-md-7 col-12">
						<!-- Top Contact -->
						<ul class="top-contact">
							<li><i class="fa fa-phone"></i>+880 1234 56789</li>
							<li><i class="fa fa-envelope"></i><a
								href="mailto:support@yourmail.com">support@yourmail.com</a></li>
						</ul>
						<!-- End Top Contact -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-12">
							<%--<%ProjectImages ps =(ProjectImages) session.getAttribute("image");--%>
								<%-- <a href="index.jsp"><img src="Project_img/<%=ps.getImg_Name() %>" alt="#"></a>--%>
								 
 	<!--start to display the logo -->
 	 <div class="logo">
 				
	<%
    ReadImp Rdao = new ReadImp();
    Connection con = Connection_Factory.getcon();
	List<ProjectImages> al = Rdao.ReadLogo(con);
    String selectedImagePath = null;

    // Check if user has selected an image before
    if (al != null ) 
    {			 	
    	for(ProjectImages pl :al)
    	{
        // Get the path of the last selected image
        selectedImagePath =  pl.getImg_Name();    
        }
    }
%>

<% if (selectedImagePath != null) 
	{ 
	System.out.println("path is "+selectedImagePath);%>
	 
    	<!-- Display the selected image -->
    	<a href="index.jsp"><img src="Project_Img\<%= selectedImagePath %>" width="30%" height="30%" alt="#"></a>
	<% }
else 
  	{ %>
    	<!-- Display the default image -->
    	<a href="index.jsp"><img src="Project_Img\Logo.jpeg.jpg" width="30%" height="30%" alt="#"></a>
<% 	} %>
	
		 </div>
 	<!-- End to display the logo -->
 	
							<!-- Mobile Nav -->
							<div class="mobile-nav"></div>
							<!-- End Mobile Nav -->
						</div>
						<div class="col-lg-7 col-md-9 col-12">
							<!-- Main Menu -->
							<div class="main-menu">
								<nav class="navigation">
									<ul class="nav menu">
										<li><a href="index.jsp">Home</a></li>

										<li><a href="#">About Us </a></li>
										<!-- <li><a href="#">Services </a></li>
											<li><a href="#">Pages <i class="icofont-rounded-down"></i></a>
												<ul class="dropdown">
													<li><a href="404.html">404 Error</a></li>
												</ul>
											</li>
											<li><a href="#">Blogs <i class="icofont-rounded-down"></i></a>
												<ul class="dropdown">
													<li><a href="blog-single.html">Blog Details</a></li>
												</ul>
											</li> -->
										<li><a href="#c1">Contact Us</a></li>
									</ul>
								</nav>
							</div>
							<!--/ End Main Menu -->
						</div>
						<div class="col-lg-2 col-12">
							<div class="get-quote">
								<!-- 
									 <a href="SignupLogin.jsp" class="btn">Log In / Sign Up</a>  
								
							 	 -->
			<%
	String check = (String) session.getAttribute("check");
	 
								
								if(check!=null)
								{ 
									String Mobno=check;
									%>
								 
									
                                        <a href="Logout" class="btn">LogOut</a>
                                        
                                         <a href="Uinfo?uMob=<%= Mobno %>" class="profile-link">
                                               <img src="profile_Logo.png" alt="Profile" class="profile-image">
                                             <!-- <input type="hidden"  name="uinfo" value=<%=check%>>  --> 
                                         </a>
								
								<%
								} 
								else 		
								{
								%>
								<a href="Agent_Login.jsp" class="btn"> Login </a>
								<%  
								}
								%>     

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
	<!-- End Header Area -->

	<!-- Slider Area -->
	<section class="slider">
		<div class="hero-slider">
			<!-- Start Single Slider -->
 				
				
	<%
	List<ProjectImages> al1 = Rdao.ReadHeroImg(con);
    String selectedheroimg = null;
	


    // Check if user has selected an image before
    if (al1 != null ) 
    {			 	
    	for(ProjectImages pl1 :al1)
    	{
        // Get the path of the last selected image
        selectedheroimg =  pl1.getImg_Name();
    	System.out.println("path is hero"+selectedheroimg);
        }
    }
%>

<% if (selectedheroimg != null) 
	{ 
	System.out.println("path is jsp"+selectedheroimg);%>
	 
    	<!-- Display the selected image -->
     	 <div class="single-slider" style="background-image: url('Project_Img/<%= selectedheroimg %>')">
    	
	<% }
else 
  	{ 
	System.out.println("in else part");%>
  	
    	<!-- Display the default image -->
    	
    	<div class="single-slider" style="background-image: url('Project_Img/homplot.jpeg.jpeg')">
    	
 <% } %>
	
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<div class="text">
								
	<%
	List<AddMoreInfo> ads1 =Rdao.ReadAddMoreInfo(con);
	 String sideimgMsg = null;

	System.out.println("al"+ads1);

    // Check if user has selected an image before
    if (ads1 != null ) 
    {			 	
    	for(AddMoreInfo ad2 :ads1)
    	{
        // Get the path of the last selected image
        sideimgMsg =  ad2.getSlidebarMsg();
    	System.out.println("path is"+sideimgMsg);
        }
    }
%>
<% if (sideimgMsg != null) 
	{ 
	System.out.println("path is jsp"+sideimgMsg);%>
    	<!-- Display the selected image -->
          <h1 style="color: white;"><%= sideimgMsg %></h1>  	
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
<h1 style="color: white;">We Provide Medical Services That You Can Trust! </h1>
<% } %>	
								
								
								<div class="button">
									<a href="#c1" class="btn">Get Appointment</a> <!-- <a href="#"
										class="btn primary">Learn More</a> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 
			
			<!-- Start Single Slider -->
			<div class="single-slider">
			
							
	<%
     

	System.out.println("al"+al);
	


    // Check if user has selected an image before
    if (al1 != null && !al1.isEmpty()) 
    {			 	
    	for(ProjectImages pl1 :al1)
    	{
        // Get the path of the last selected image
        selectedheroimg =  pl1.getImg_Name();
    	System.out.println("path is"+selectedheroimg);
        }
    }
%>

<% if (selectedheroimg != null) 
	{ 
	System.out.println("path is jsp"+selectedheroimg);%>
	 
    	<!-- Display the selected image -->
     	 <div class="single-slider" style="background-image: url('Project_Img/<%= selectedheroimg %>')">
    	
	<% }
else 
  	{ 
	System.out.println("in else part");%>
  	
    	<!-- Display the default image -->
    	
    	<div class="single-slider" style="background-image: url('Project_Img/homplot.jpeg.jpeg')">
    	
 <% } %>
 				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<div class="text">
								<h1 style="color: white;">
<% if (sideimgMsg != null) 
	{ 
	System.out.println("path is jsp"+sideimgMsg);%>
    	<!-- Display the selected image -->
          <h1 style="color: white;"><%= sideimgMsg %></h1>  	
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
<h1 style="color: white;">We Provide Medical Services That You Can Trust! </h1>
<% } %>									</h1>
								
								<div class="button">
									<a href="#c1" class="btn">Get Appointment</a> 
									<!-- <a href="#"
									   class="btn primary">Conatact Now</a>  -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slider -->
		</div>
	</section>
	<!--/ End Slider Area -->

	<!-- Start Schedule Area -->
	<section class="schedule">
		<div class="container">
			<div class="schedule-inner">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-12 ">
						<!-- single-schedule -->
						<div class="single-schedule first">
							<div class="inner">
								<div class="icon">
									<i class="fa fa-ambulance"></i>
								</div>
								<div class="single-content">
									
									<h4>Projects</h4>
<%
List<AddMoreInfo> ads =Rdao.ReadAddMoreInfo(con);
		String newprojectsMsg = null;

	System.out.println("al"+ads);

    // Check if user has selected an image before
    if (ads != null ) 
    {			 	
    	for(AddMoreInfo ad1 :ads)
    	{
        // Get the path of the last selected image
        newprojectsMsg =  ad1.getProjects();
    	System.out.println("path is"+newprojectsMsg);
        }
    }
%>
<% if (newprojectsMsg != null) 
	{ 
	System.out.println("path is jsp"+newprojectsMsg);%>
    	<!-- Display the selected image -->
          <p><%= newprojectsMsg %></p>  	
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
    	<p>Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.</p>
 <% } %>	
			 
										
		
		
		<!-- // another section  -->								
<% if (check != null) 
	{ 
	System.out.println("path is jsp"+check);%>
	 
 		<a href="ProjectList.jsp">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
    	
	<% }
else 
  	{ 
	System.out.println("in else part");%>
  	    	
	<a href="Agent_Login.jsp">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
    	
 <% } %>									
									
									
 									
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- single-schedule -->
						<div class="single-schedule middle">
							<div class="inner">
								<div class="icon">
									<i class="icofont-prescription"></i>
								</div>
								<div class="single-content">
									
									<h4>Why Choose Us !</h4>
									
	<%
	 String whyChooseUseMSg = null;

	System.out.println("al"+ads);

    // Check if user has selected an image before
    if (ads != null ) 
    {			 	
    	for(AddMoreInfo ad1 :ads)
    	{
        // Get the path of the last selected image
        whyChooseUseMSg =  ad1.getWhyChooseUs();
    	System.out.println("path is"+whyChooseUseMSg);
        }
    }
%>
<% if (whyChooseUseMSg != null) 
	{ 
	System.out.println("path is jsp"+whyChooseUseMSg);%>
    	<!-- Display the selected image -->
          <p><%= whyChooseUseMSg %></p>  	
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
    	<p>Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.</p>
 <% } %>	
									<a href="#">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-12 imp">
						<!-- single-schedule -->
						<div class="single-schedule last">
							<div class="inner">
								<div class="icon">
									<i class="icofont-ui-clock"></i>
								</div>
								<div class="single-content">
									
									<h4>Opening Hours</h4>
									<ul class="time-sidual">
										<li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
										<li class="day">Saturday <span>9.00-18.30</span></li>
										<li class="day">Monday - Thusday <span>9.00-15.00</span></li>
									</ul>
									<a href="#">LEARN MORE<i class="fa fa-long-arrow-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/End Start schedule Area -->

	<!-- Start Feautes -->
	<section class="Feautes section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Ready to book your next plot !</h2>
						<img src="img/section-img.png" alt="#">
					</div>
				</div>
			</div>

			 
		</div>
 	</section>
	<!--/ End Feautes -->

	<!-- Start Fun-facts -->
	<div id="fun-facts" class="fun-facts section overlay">
		<div class="container">
			<div class="row">
				 
				<div class="col-lg-4 col-md-6 col-12">
					<!-- Start Single Fun -->
					<div class="single-fun">
						<i class="icofont icofont-user-alt-3"></i>
						<div class="content">
<%
	List<AddMoreInfo> ads2 =Rdao.ReadAddMoreInfo(con);
	 int comlelteProject = 0;

	System.out.println("al"+ads2);

    // Check if user has selected an image before
    if (ads2 != null ) 
    {			 	
    	for(AddMoreInfo ad3 :ads2)
    	{
        // Get the path of the last selected image
        comlelteProject =  ad3.getCompletedProjects();
    	System.out.println("path is"+comlelteProject);
        }
    }
%>
<% if (comlelteProject != 0) 
	{ 
	System.out.println("path is jsp"+comlelteProject);%>
    	<!-- Display the selected image -->
      <span class="counter"><%= comlelteProject %> 	</span>
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
      <span class="counter">557</span>
<% } %>	
							
							<p>Completed Projects</p>
						</div>
					</div>
					<!-- End Single Fun -->
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<!-- Start Single Fun -->
					<div class="single-fun">
						<i class="icofont-simple-smile"></i>
						<div class="content">
<%
	List<AddMoreInfo> ads3 =Rdao.ReadAddMoreInfo(con);
	 int happyFamily = 0;

	System.out.println("al"+ads3);

    // Check if user has selected an image before
    if (ads1 != null ) 
    {			 	
    	for(AddMoreInfo ad4 :ads3)
    	{
        // Get the path of the last selected image
        happyFamily =  ad4.getHappyFamily();
    	System.out.println("path is"+happyFamily);
        }
    }
%>
<% if (happyFamily != 0) 
	{ 
	System.out.println("path is jsp"+happyFamily);%>
    	<!-- Display the selected image -->
      <span class="counter"><%= happyFamily %> 	</span>
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
	<span class="counter">4379</span>
<% } %>	
							<p>Happy Families</p>
						</div>
					</div>
					<!-- End Single Fun -->
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<!-- Start Single Fun -->
					<div class="single-fun">
						<i class="icofont icofont-table"></i>
						<div class="content">
		<%
	List<AddMoreInfo> ads4 =Rdao.ReadAddMoreInfo(con);
	 int yrOfExperience = 0;

	System.out.println("al"+ads4);

    // Check if user has selected an image before
    if (ads4 != null ) 
    {			 	
    	for(AddMoreInfo ad5 :ads4)
    	{
        // Get the path of the last selected image
        yrOfExperience =  ad5.getYearsOfExperience();
    	System.out.println("path is"+yrOfExperience);
        }
    }
%>
<% if (yrOfExperience != 0) 
	{ 
	System.out.println("path is jsp"+yrOfExperience);%>
    	<!-- Display the selected image -->
      <span class="counter"><%= yrOfExperience %> 	</span>
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
    	<!-- Display the default image -->
		<span class="counter">32</span>
<% } %>	
							<p>Years of Experience</p>
						</div>
					</div>
					<!-- End Single Fun -->
				</div>
			</div>
		</div>
	</div>
	<!--/ End Fun-facts -->

	<!-- Start Why choose --> 


 

	 

	<!-- Start Appointment -->
	<section class="appointment">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2 id="c1">We Are Always Ready to Help You. Book An Appointment</h2>
						<img src="img/section-img.png" alt="#">
			<!--  <p>Lorem ipsum dolor sit amet consectetur adipiscing elit
							praesent aliquet. pretiumts</p>  -->		
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-12 col-12">
					<form class="form" action="https://formsubmit.co/aachalsurjuse@gmail.com" method="POST" onsubmit="return validateForm()">
						<div>
							<h2 align="center">Contact Us</h2><br>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-12 setbg">
								<div class="form-group">
                            <input name="name" type="text" placeholder="Name">
                            <input name="cont" type="hidden" value="contc">
                       </div>
								
							</div>
							<div class="col-lg-6 col-md-6 col-12 setbg">
								<div class="form-group">
									<input name="phone" type="text" placeholder="Phone">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-12 setbg">
								<div class="form-group">
									<input name="email" type="email" placeholder="Email">
								</div>
							</div>

							 
							<div class="col-lg-12 col-md-12 col-12 setbg">
								<div class="form-group">
									<input name="address" type="text" placeholder="Address">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-12 setbg">
								<div class="form-group">
									<textarea name="message"
										placeholder="Write Your Message Here....."></textarea>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-5 col-md-4 col-12">
								<div class="form-group">
									<div class="button">
										<button type="submit" class="btn">submit</button>
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-8 col-12">
								<p>( We will be confirm by an Text Message )</p>
							</div>
						</div>
					</form>
				</div>
				
				<div class="col-lg-6 col-md-12 ">
				<br><br>
					<div class="appointment-image">
						<%
List<ProjectImages> al2 =Rdao.ReadSideImg(con);
		String selectedsideimg = null;

	System.out.println("al"+al2);
	


    // Check if user has selected an image before
    if (al2 != null ) 
    {			 	
    	for(ProjectImages pl2 :al2)
    	{
        // Get the path of the last selected image
        selectedsideimg =  pl2.getImg_Name();
    	System.out.println("path is"+selectedsideimg);
        }
    }
%>

<% if (selectedsideimg != null) 
	{ 
	System.out.println("path is jsp"+selectedsideimg);%>
	 
    	<!-- Display the selected image -->
          <img alt="#" src="Project_Img\<%= selectedsideimg %>"; width="100%" height="100%" >    	
	<% }
 else 
  	{ 
	System.out.println("in else part");%>
  	
    	<!-- Display the default image -->
    	
    	<img alt="#" src="Project_Img\sideimg.jpeg"; width="100%" height="100%" >
    	
 <% } %>
	
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Appointment -->

	 

	<!-- Footer Area -->
	<footer id="footer" class="footer ">
		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-12">
						<div class="single-footer">
							<!-- <h2>About Us</h2> -->
					<%
	List<AddMoreInfo> ads5 =Rdao.ReadAddMoreInfo(con);
	 String aboutLogo = null;
	 String aboutEmail = null;
	 String aboutMobno = null;

	System.out.println("al"+ads5);

    // Check if user has selected an image before
    if (ads5 != null ) 
    {			 	
    	for(AddMoreInfo ad6 :ads5)
    	{
        // Get the path of the last selected image
        aboutLogo =  ad6.getAboutSectionLogo();
        aboutEmail= ad6.getEmail();
        aboutMobno= ad6.getMobNo();
        }
    }
%>
<% if (aboutLogo != null) 
	{ 
%>		<div >
    	<img src="Project_Img\<%=aboutLogo %>" width="25%" height="25%">
		</div>
		<div class="footlogo">
		<p><%=aboutEmail %></p>
		</div>
		<div class="footlogo">
		<p>+91-<%=aboutMobno %></p>
		</div>	
	<% }
 else 
  	{ 
	%>
    	<!-- Display the default image -->
    	<div >
        <img src="Project_Img\card1.jpeg" width="25%" height="25%">
        </div>
        <div class="footlogo">
		<p>Example@gamil.com</p>
		</div>
		<div class="footlogo">
		<p>+91-7867354678</p>
		</div>
	<% } %>	
							
							
							
							<!-- Social -->
							<ul class="social">
								<li><a href="#"><i class="icofont-facebook"></i></a></li>
								<li><a href="#"><i class="icofont-google-plus"></i></a></li>
								<li><a href="#"><i class="icofont-twitter"></i></a></li>
								<li><a href="#"><i class="icofont-vimeo"></i></a></li>
								<li><a href="#"><i class="icofont-pinterest"></i></a></li>
							</ul>
							<!-- End Social -->
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<div class="single-footer f-link">
							<h2>Quick Links</h2>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<ul>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Home</a></li>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>About Us</a></li>
										<li><a href="#c1"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Contact Us</a></li>
										<!-- <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>	 -->
									</ul>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<ul>
										<!-- <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consuling</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li> -->
										<!-- <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>	 -->
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<div class="single-footer">
							<h2>Open Hours</h2>
							<p></p>
							<ul class="time-sidual">
								<li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
								<li class="day">Saturday <span>9.00-18.30</span></li>
								<li class="day">Monday - Thusday <span>9.00-15.00</span></li>
							</ul>
						</div>
					</div>
					 
				</div>
			</div>
		</div>
		<!--/ End Footer Top -->
		<!-- Copyright -->
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12">
						<div class="copyright-content">
							<!-- <p>© Copyright 2018  |  All Rights Reserved by <a href="https://www.wpthemesgrid.com" target="_blank">wpthemesgrid.com</a> </p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Copyright -->
	</footer>
	<!--/ End Footer Area -->

	<!-- jquery Min JS -->
	<script src="js/jquery.min.js"></script>
	<!-- jquery Migrate JS -->
	<script src="js/jquery-migrate-3.0.0.js"></script>
	<!-- jquery Ui JS -->
	<script src="js/jquery-ui.min.js"></script>
	<!-- Easing JS -->
	<script src="js/easing.js"></script>
	<!-- Color JS -->
	<script src="js/colors.js"></script>
	<!-- Popper JS -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap Datepicker JS -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Jquery Nav JS -->
	<script src="js/jquery.nav.js"></script>
	<!-- Slicknav JS -->
	<script src="js/slicknav.min.js"></script>
	<!-- ScrollUp JS -->
	<script src="js/jquery.scrollUp.min.js"></script>
	<!-- Niceselect JS -->
	<script src="js/niceselect.js"></script>
	<!-- Tilt Jquery JS -->
	<script src="js/tilt.jquery.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="js/owl-carousel.js"></script>
	<!-- counterup JS -->
	<script src="js/jquery.counterup.min.js"></script>
	<!-- Steller JS -->
	<script src="js/steller.js"></script>
	<!-- Wow JS -->
	<script src="js/wow.min.js"></script>
	<!-- Magnific Popup JS -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Counter Up CDN JS -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	
 </body>
</html>