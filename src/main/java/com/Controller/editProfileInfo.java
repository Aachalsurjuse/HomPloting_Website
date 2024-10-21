package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ReadImp;
import com.Dao.updateImp;
import com.Pojo.User;
@WebServlet("/editProfileInfo")
public class editProfileInfo extends HttpServlet 
{
    Connection con= com.connectionFacotry.Connection_Factory.getcon();
	updateImp udao= new updateImp();
	ReadImp rdao = new ReadImp();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		 String name = req.getParameter("Name");
		 String number = req.getParameter("number");
		 String add = req.getParameter("Address");
		 String pass = req.getParameter("pass");
		 
		 int SN = Integer.parseInt(req.getParameter("SN"));
		 System.out.println("in edit profile servler = "+SN);
		 
		 String res = udao.updateProfile(con, name, number, add, pass, SN);
		 List<User> readUser = rdao.ReadUser(con, number);
		 System.out.println("in edit servlet= "+ readUser);
		 if(res.equals("updated"))
		 {
			 HttpSession session = req.getSession();
			 session.setAttribute("users", readUser);
			 resp.sendRedirect("User_Info.jsp");
		 }
		 
	}
}
