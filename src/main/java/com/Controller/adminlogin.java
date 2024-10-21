package com.Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.InsertImp;
import com.Dao.ReadImp;

 @WebServlet("/adminlogin")
public class adminlogin extends HttpServlet
{
	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
	InsertImp ins = new InsertImp();
	ReadImp read = new ReadImp();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
    	  String name = req.getParameter("uname");
    	  String pass = req.getParameter("upass");
    	  
    	   String res = ins.AdminData();
    	   String res1 = read.cheack(con, name, pass);
    	   
    	   HttpSession session = req.getSession();
    	  if(res1.equals("exits"))
  		{
    		  session.setAttribute("checkadd", name);
  			System.out.println("reached");
  			resp.sendRedirect("admin.jsp");
  		}
  		else
  		{
  			System.out.println("not reached");
//  			req.getSession().setAttribute("msg", "user Exists");
  			resp.sendRedirect("adminlogin.jsp");
  		}

    }
}
