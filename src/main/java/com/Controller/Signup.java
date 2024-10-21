package com.Controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.InsertImp;
 
 @WebServlet("/signup")
public class Signup extends HttpServlet
{
	 InsertImp signup = new InsertImp();
 	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	
	{
		String Name = req.getParameter("uname");
		String password = req.getParameter("upass");
		String MobNo = req.getParameter("uMob");
		String Address = req.getParameter("uadd");

		String res = signup.insertUser(Name, password, Address, MobNo);
		HttpSession session = req.getSession();

		if(res.equals("insert"))
		{
 			session.setAttribute("check",MobNo);
			resp.sendRedirect("index.jsp");
		}
		else
		{
			resp.sendRedirect("SignupLogin.jsp");
		}
 	}
}
