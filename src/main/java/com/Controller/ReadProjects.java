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
import com.Pojo.Plot_Details;
@WebServlet("/ReadProjects")
public class ReadProjects extends HttpServlet
{
	ReadImp rdao = new ReadImp();
    Connection con= com.connectionFacotry.Connection_Factory.getcon();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String pname = req.getParameter("pname");
		System.out.println("readproject servlet"+pname);
		ArrayList<Plot_Details> readAllBookedPlot = (ArrayList<Plot_Details>) rdao.ReadAllBookedPlot(con, pname);
		HttpSession session = req.getSession();
		session.setAttribute("plotdetail", readAllBookedPlot);
		session.setAttribute("projectname", pname);

		resp.sendRedirect("readplot.jsp");
	}
}
