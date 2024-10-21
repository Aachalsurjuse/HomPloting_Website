package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ReadImp;
import com.Pojo.ContactDetail;
import com.Pojo.Plot_Details;
import com.Pojo.projects;

@WebServlet("/bookingDetails")
public class BookingDetails extends HttpServlet

{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
		ReadImp rDao= new ReadImp();
		
		ArrayList<projects> apd = (ArrayList<projects>) rDao.ReadAllProjects(con);
		
 		HttpSession session = req.getSession();

		System.out.println(apd);
 		session.setAttribute("details",apd);
 		resp.sendRedirect("plotbooking.jsp");
		
	}
}
