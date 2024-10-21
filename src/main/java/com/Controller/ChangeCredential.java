package com.Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.updateImp;
 

@WebServlet("/changecredential")
public class ChangeCredential extends HttpServlet 
{
    Connection con= com.connectionFacotry.Connection_Factory.getcon();
	updateImp uimp = new updateImp();
	 @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String name = req.getParameter("uname");
		  String pass = req.getParameter("upass");
		  
		  String res = uimp.update(name, pass);
		  HttpSession session = req.getSession();
		  if(res.equals("updated"))
		  {
			  session.setAttribute("check1", name);
//			  System.out.println("reached");
			  resp.sendRedirect("adminlogin.jsp");
		  }
		  else
		  {
//			  System.out.println("not reached");
			  resp.sendRedirect("changecredential.jsp");
		  }
	}
	  
}