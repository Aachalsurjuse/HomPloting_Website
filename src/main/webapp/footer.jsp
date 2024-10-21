<!-- Footer Area -->
	<%@page import="com.connectionFacotry.Connection_Factory"%>
<%@page import="com.Dao.ReadImp"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Pojo.AddMoreInfo"%>
<%@page import="java.util.List"%>
<footer id="footer" class="footer ">
		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-lg-4 col-md-6 col-12">
						<div class="single-footer">
					<!-- <h2>About Us</h2> -->
					<%
	Connection cons =  Connection_Factory.getcon();
	ReadImp dao = new ReadImp();
	List<AddMoreInfo> ads5 =dao.ReadAddMoreInfo(cons);
	 String aboutLogo = null;
	 String aboutEmail = null;
	 String aboutMobno = null;

	System.out.println("al"+ads5);

    // Check if user has selected an image before
    if (ads5 != null) 
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
%>
    	<div >
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
    	<img src="Project_Img\<%=aboutLogo %>" width="25%" height="25%">
		</div>
		<div class="footlogo">
		<p><%=aboutEmail %></p>
		</div>
		<div class="footlogo">
		<p>+91-<%=aboutMobno %></p>
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
					<div class="col-sm-12 col-lg-4 col-md-6 col-12">
						<div class="single-footer f-link">
							<h2>Quick Links</h2>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<ul>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Home</a></li>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>About Us</a></li>
										<li><a href="index.jsp"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Contact Us</a></li>
										<!-- <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>	 -->
									</ul>
								</div>
								<!-- <div class="col-lg-6 col-md-6 col-12">
									<ul>
										<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consuling</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
											<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li>
										<li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>	
									</ul>
								</div> -->
							</div>
						</div>
					</div>
					<div class=" col-sm-12 col-lg-4 col-md-6 col-12">
						<div class="single-footer">
							<h2>Open Hours</h2>
							<p>Lorem ipsum dolor sit ame consectetur adipisicing elit do
								eiusmod tempor incididunt.</p>
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