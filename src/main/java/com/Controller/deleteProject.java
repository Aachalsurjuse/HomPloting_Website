package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.DeleteImp;
import com.Dao.ReadImp;
import com.Pojo.projects;

@WebServlet("/deleteproject")
public class deleteProject extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		ReadImp rdao = new ReadImp();

	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
		 String pname = req.getParameter("pname");
		 System.out.println("in deleted method="+pname);
		 
		 DeleteImp ddao= new DeleteImp();
		 String res = ddao.dropTable(con, pname);
		 System.out.println("res= in servlet"+res);
		 
		 String ress = ddao.deleteproject(con, pname);
		 System.out.println("res= in servlet"+ress);
		 
		 ArrayList<projects> apd = (ArrayList<projects>) rdao.ReadAllProjects(con);
			
	 		HttpSession session = req.getSession();

			System.out.println(apd);
	 		session.setAttribute("details",apd);
		 resp.sendRedirect("plotbooking.jsp");

	}
}
