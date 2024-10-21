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


import com.Dao.ReadImp;
import com.Pojo.projects;
@WebServlet("/AgentLogin")
public class AgentLogin extends HttpServlet 
{
	ReadImp read = new ReadImp();
    Connection con= com.connectionFacotry.Connection_Factory.getcon();
   @Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
   {
	   String MobNo = req.getParameter("Mobno");
		String password = req.getParameter("pswd");

		String res =  read.checkUser(password, MobNo);
		HttpSession session = req.getSession();
		
		ArrayList<projects> readAllPro = (ArrayList<projects>) read.ReadAllProjects(con);
 		System.out.println(readAllPro);

		if(res.equals("exits"))
		{
			session.setAttribute("check",MobNo);
			session.setAttribute("readpro", readAllPro);
			resp.sendRedirect("ProjectList.jsp");
		}
		else
		{
			resp.sendRedirect("Agent_Login.jsp");
		}
  }
}