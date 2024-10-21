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
import com.Pojo.ContactDetail;

@WebServlet("/deleteContact")
public class deleteContact extends HttpServlet
{
    Connection con= com.connectionFacotry.Connection_Factory.getcon();

     @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
  		ReadImp uDao = new ReadImp();

    	 String mob = req.getParameter("mobn");
    	System.out.println("mobnnnnnn "+mob);
    	
    	DeleteImp d=new DeleteImp();
    	String res = d.deletecontact(con, mob);
		  HttpSession session = req.getSession();

    	 if(res.equals("deleted"))
		  {
    	 ArrayList<ContactDetail> allUsers = (ArrayList<ContactDetail>) uDao.ReadCdetail(con);
			  session.setAttribute("checkadd", mob);
		 	session.setAttribute("users", allUsers);
//			  System.out.println("reached");
			  resp.sendRedirect("Read.jsp");
		  }
		  else
		  {
			  System.out.println("not deleted");
		  }
    }
}
