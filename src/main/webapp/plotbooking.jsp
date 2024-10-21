<%@page import="com.Pojo.ProjectImages"%>
<%@page import="java.util.List"%>
<%@page import="com.connectionFacotry.Connection_Factory"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Dao.ReadImp"%>
<%@page import="com.Pojo.projects"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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


<meta charset="ISO-8859-1">


<title>Insert title here</title>
<style type="text/css">
.profile-image {
	width: 50px; /* Adjust the width as needed */
	height: auto; /* Maintain aspect ratio */
}

article {
  --img-scale: 1.001;
  --title-color: black;
  --link-icon-translate: -20px;
  --link-icon-opacity: 0;
  position: relative;
  border-radius: 16px;
  box-shadow: none;
  background: #fff;
  transform-origin: center;
  transition: all 0.4s ease-in-out;
  overflow: hidden;
}

article a::after {
  position: absolute;
  inset-block: 0;
  inset-inline: 0;
  cursor: pointer;
  content: "";
}

/* basic article elements styling */
article h2 {
  margin: 0 0 18px 0;
 /*  font-family: "Bebas Neue", cursive; */
  font-size: 1.9rem;
  letter-spacing: 0.06em;
  color: var(--title-color);
  transition: color 0.3s ease-out;
}

figure {
  margin: 0;
  padding: 0;
  aspect-ratio: 16 / 9;
  overflow: hidden;
}

article img {
  max-width: 100%;
  transform-origin: center;
  transform: scale(var(--img-scale));
  transition: transform 0.4s ease-in-out;
}

.article-body {
  padding: 24px;
}

article a {
  display: inline-flex;
  align-items: center;
  text-decoration: none;
  color: #28666e;
}

article a:focus {
  outline: 1px dotted #28666e;
}

article a .icon {
  min-width: 24px;
  width: 24px;
  height: 24px;
  margin-left: 5px;
  transform: translateX(var(--link-icon-translate));
  opacity: var(--link-icon-opacity);
  transition: all 0.3s;
}

/* using the has() relational pseudo selector to update our custom properties */
article:has(:hover, :focus) {
  --img-scale: 1.1;
  --title-color: #28666e;
  --link-icon-translate: 0;
  --link-icon-opacity: 1;
  box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
}

/** 
Generic layout (demo looks)
**/

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding-top: 5px;
  padding-bottom: 20px;
  font-family: "Figtree", sans-serif;
  font-size: 1.2rem;
  line-height: 1.6rem;
  background-color: #D4E3ED;
  min-height: 100vh;
}
.header .header-inner{
position: fixed;
top: 0;
z-index: 99;
padding-bottom: 0px;
}

.projectname{
 
font-size: 26px;
}
.btn{
background-color: red;
padding: 10px;
margin-top: 7px;
}
.articles {
  display: grid;
  max-width: 1200px;
  margin-inline: auto;
 /*  padding-inline: 24px; */
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 24px;
  margin-bottom: 44px;
}
.custom-btn {
    width: 150px;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: 600;
    color: #ffffff;
    background-color: blue;
    border: 2px solid blue;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;s
}

p {
    color: #757575;
    margin: 0;
    line-height: 24px;
    font-weight: 400;
    margin-bottom: 19px;
}

.custom-btn:hover {
    background-color: #db440f;
    border-color: #db440f;
}


@media screen and (min-width: 320px) 
{
	body {
    margin: 0;
   padding-top: 5px;
  padding-bottom: 20px;
    font-family: "Figtree", sans-serif;
    font-size: 1.2rem;
    line-height: 1.6rem;
    background-color: #D4E3ED;
    min-height: 100vh;
}
	articles {
    display: grid;
    /* padding-inline: 0px; */
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 0px;
}
.art{
margin-top: 73px;
margin-bottom: 0px;
}
.container{
width:100%;
    margin-right: 20px;
    padding-left: 20px;
}
 .arrow{
     margin: 7px;
     }
}
@media only screen and (max-width: 767px) {
     .arrow{
     margin: 8px;
     }
     .dev{
     margin: 20px;
     }
        .arro{
     	height: 30px;
     	width: 30px;
     }
    .articles {
    display: grid;
    max-width: 1200px;
    margin-inline: auto;
    /* padding-inline: 24px; */
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 24px;
      
   
    padding-bottom: 25%;
}

}

@media only screen and (min-width: 768px) and (max-width: 991px) {
     .arro{
     	height: 40px;
     	width: 40px;
     }
.col-12 {
    -ms-flex: 0 0 100%;
    flex: 0 0 100%;
    display: contents;
    max-width: 100%;
}
.get-quote {
    margin-top: 12px;
    margin-left: 292px;
}
 .arrow{
     margin: 15px;
     }
      .articles {
   margin:30px;
    padding-bottom: 15%;
}
}

@media (min-width:1024px) {
    .container {
        max-width: 90%;
        padding: 10px;
    }
         .articles {
   margin:30px;
    padding-bottom: 15%;
}
    .col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
    }
    .right-column{
    padding-left: 10px;
} 
      .arrow{
     margin: 20px;
     }
      .arro{
     	height: 40px;
     	width: 40px;
     }
}

@media (min-width:1400px) {
  /*  body{
   	margin-left: 20%;
   	margin-right: 10%;
   } */
  /*  .contain{
   margin-left: 120px;
   } */
    .container {
        max-width: 90%;
        padding: 10px;
    }
         .articles {
   margin:30px;
    padding-bottom: 15%;
}
    .col-md-6 {
        flex: 1 1 25%;
        max-width: 100%;
        font-size: 20px;
    }
    .right-column{
    padding-left: 10px;
} 
     .arrow{
     margin: 20px;
     }
     .arro{
     	height: 40px;
     	width: 40px;
     }
     .dev{
     margin-left: 10px;
     margin-right: 10px;
     }
}

@media (min-width:2560px) {
	.dev{
     margin-left: 20px;
     margin-right: 40px;
     }
}

</style>
</head>
<body>
<div class="arrow">
 	<a href="admin.jsp" >
      <img class="arro" src="Project_Img/arrow.jpg"/>
 </a>
 </div>
<%


ArrayList<projects> pj = (ArrayList<projects>) session.getAttribute("details");
System.out.println("readprojects= " + pj);
%>
 <div align="center">
  <h1>Project List</h1>
</div> 
<br>
<div class="contain" align="center">
<section class="articles">
<% 
for (projects p : pj) {
  int pno = p.getPlotNo();
  String pimg = p.getProImg();
  String pname = p.getProName();
  System.out.println("pname variable value" + pname);
%>
<div class="dev" align="left">
<article class="art" >
  <div class="article-wrapper">
    <figure>
      <img src="Project_Img/<%= p.getProImg() %>" height="150%" width="110%" />
    </figure>
    <div class="article-body">
      <p class="projectname"><%= p.getProName() %>, Plot</p>
      <p><%= p.getMsg() %></p>
      
      <form action="ReadProjects?pname=<%=pname %>" method="post">
                <input type="hidden" name="pno" value="<%= pno %>">
                <input type="hidden" name="pimg" value="<%= pimg %>">
                <input type="hidden" name="pname" value="<%= pname %>">
<%--             <input type="hidden" name="check" value="<%= check %>">
 --%>               
                <button type="submit" class="btn btn-primary custom-btn" role="button">View Details</button>

      </form>
      
      
    </div>
  </div>
</article>
     <div>
     <a role="button" class="btn btn-danger"  href="deleteproject?pname=<%=pname %>" >Delete</a>
      </div>
      </div>
<% } %>
</section>
</div>
</body>
</html>