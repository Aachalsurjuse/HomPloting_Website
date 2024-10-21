package com.Controller;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.InsertImp;
import com.Dao.ReadImp;
import com.Dao.updateImp;
import com.Pojo.ProjectImages;
import com.connectionFacotry.Connection_Factory;

@WebServlet("/AddMoreInfo")
@MultipartConfig
public class AddMoreInfo extends HttpServlet
{
	Connection con= com.connectionFacotry.Connection_Factory.getcon();
	InsertImp idao= new InsertImp();
	ReadImp Rdao= new ReadImp();
	updateImp uDao = new updateImp();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String slidebarMsg = req.getParameter("slidebar_msg");
        String projects = req.getParameter("projects");
        String whyChooseUs = req.getParameter("why_choose_us");
        String completedProjects = req.getParameter("completed_projects");
        String happyFamily = req.getParameter("happy_family");
        String yearsOfExperience =req.getParameter("year_of_experience");
        String email = req.getParameter("email");
        String mobNo = req.getParameter("mob_no");
        String logo = req.getParameter("logo");
        
		Part ps = req.getPart("logo");
		 String img = ps.getSubmittedFileName();
		 System.out.println(img);
		 InputStream io = ps.getInputStream();
		 byte[] b = io.readAllBytes();
		 
		 try {
			    String path = "/homplot/src/main/webapp/Project_Img\\"+img;
			    System.out.println("File saved to path: " + path);
			    FileOutputStream fio = new FileOutputStream(path);
			    fio.write(b);
			    fio.close();
		    }
		 catch (IOException e) 
		    {
			    System.err.println("Error while saving file: " + e.getMessage());
			}
		 
		 // method for inserting data in table
		 //String res = idao.AddMoreInfo(con);
		 String res = uDao.updateMoreInfo(con, slidebarMsg, projects, whyChooseUs, completedProjects, happyFamily, yearsOfExperience, email, mobNo, img);
	      List<com.Pojo.AddMoreInfo> readinfo = Rdao.ReadAddMoreInfo(con);
		if(res.equals("updated"))
		    {
	            HttpSession session = req.getSession();

	     		session.setAttribute("moreInfo",readinfo);
	            req.getRequestDispatcher("index.jsp").forward(req, resp);
		 }
		 else
		 {
			 resp.sendRedirect("AddMoreInfo.jsp");
		 }
	}
}
