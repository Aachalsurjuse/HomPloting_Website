<%@page import="com.Pojo.ProjectImages"%>
<%@page import="java.util.List"%>
<%@page import="com.connectionFacotry.Connection_Factory"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Dao.ReadImp"%>

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
	String check1 = (String) session.getAttribute("check");
	 
								
								if(check1!=null)
								{ 
									String Mobno=check1;
									%>
								 
									
                                        <a href="Logout" class="btn">Logout</a>
                                        
                                         <a href="Uinfo?uMob=<%= Mobno %>" class="profile-link">
                                               <img src="profile_Logo.png" alt="Profile" class="profile-image">
                                              
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