 package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.InsertImp;

@WebServlet("/login")
public class Login extends HttpServlet
{
	InsertImp signup = new InsertImp();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
    	String name = req.getParameter("uname");
    	String mobno = req.getParameter("uMob");
    	String Address = req.getParameter("uadd");
		String password = req.getParameter("upass");
		
		System.out.println(mobno);
		
		String res = signup.insertUser(name,mobno, Address,password);
		
		
		HttpSession session = req.getSession();
		if(res.equals("insert"))
		{
			session.setAttribute("check", mobno);
			resp.sendRedirect("index.jsp");
		}
		else
		{
			resp.sendRedirect("AddUser.jsp");
		}	
    }
}