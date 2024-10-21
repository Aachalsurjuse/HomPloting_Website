package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ReadImp;
import com.Pojo.User;
@WebServlet("/Uinfo")
public class ReadUser extends HttpServlet
{
     		@Override
    		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

     		    Connection con= com.connectionFacotry.Connection_Factory.getcon();
    			ReadImp uDao = new ReadImp();

    			String mob = req.getParameter("uMob");
    			
    			System.out.println(mob);
    			
    			HttpSession session = req.getSession();

    			ArrayList<User> allUsers = (ArrayList<User>) uDao.ReadUser(con, mob);
    			System.out.println(allUsers);
    			session.setAttribute("users", allUsers);
    			resp.sendRedirect("User_Info.jsp");

    		}
}

