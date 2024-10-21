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
import com.Pojo.ContactDetail;

@WebServlet("/contactRead")
public class ReadContact extends HttpServlet 
{
     @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    
     {

    	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
 		ReadImp uDao = new ReadImp();

 		String Uname = req.getParameter("userName");
 		
 		System.out.println("servlet"+Uname);
 		
 		HttpSession session = req.getSession();

 		ArrayList<ContactDetail> allUsers = (ArrayList<ContactDetail>) uDao.ReadCdetail(con);
 		System.out.println(allUsers);
 		session.setAttribute("users", allUsers);
 		resp.sendRedirect("Read.jsp");
     }
}