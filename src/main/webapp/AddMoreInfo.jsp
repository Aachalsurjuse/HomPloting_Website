
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="com.Pojo.AddMoreInfo"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Dao.ReadImp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background: white;
            padding: 20px;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        .form-group input[type="text"],
        .form-group textarea,
        .form-group input[type="file"],
        .form-group input[type="number"],
        .form-group input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group textarea {
            resize: vertical;
        }
        .form-group input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
            width: 100%;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%
Connection con= com.connectionFacotry.Connection_Factory.getcon();
ReadImp ri= new ReadImp();
List<AddMoreInfo> ads=  ri.ReadAddMoreInfo(con);
for(AddMoreInfo ad :ads)
{
	%>

    <div class="form-container">
        <form action="AddMoreInfo" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="slidebar_msg">Slidebar Message</label>
                <textarea id="slidebar_msg" name="slidebar_msg" rows="3" required><%=ad.getSlidebarMsg() %></textarea>
            </div>
            <div class="form-group">
                <label for="projects">Projects</label>
                <textarea id="projects" name="projects" rows="3" required><%=ad.getProjects() %></textarea>
            </div>
            <div class="form-group">
                <label for="why_choose_us">Why Choose Us</label>  
                <textarea id="why_choose_us" name="why_choose_us" rows="3" required><%=ad.getWhyChooseUs() %></textarea>
            </div>
            <div class="form-group">
                <label for="completed_projects">Completed Projects</label>
                <input type="number" id="completed_projects" name="completed_projects" value="<%=ad.getCompletedProjects() %>" required>
            </div>
            <div class="form-group">
                <label for="happy_family">Happy Family</label>
                <input type="number" id="happy_family" name="happy_family" value="<%=ad.getHappyFamily() %>" required>
            </div>
            <div class="form-group">
                <label for="year_of_experience">Years of Experience</label>
                <input type="number" id="year_of_experience" name="year_of_experience" value="<%=ad.getYearsOfExperience()%>" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="<%=ad.getEmail() %>" required>
            </div>
            <div class="form-group">
                <label for="mob_no">Mobile Number</label>
                <input type="number" id="mob_no" name="mob_no" value="<%=ad.getMobNo() %>" required>
            </div>
            <div class="form-group">
                <label for="about_section_logo">Upload About Section Logo</label>
                <input type="file" id="about_section_logo" name="logo"  value="Project_Img/<%=ad.getAboutSectionLogo() %>" >
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">   
            </div>
        </form>
    </div>
   <% }
%>
</body>
</html>
