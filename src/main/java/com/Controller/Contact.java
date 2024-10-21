package com.Controller;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.InsertImp;

@WebServlet("/contact")
public class Contact extends HttpServlet {
    InsertImp insert = new InsertImp();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String message = req.getParameter("message");

        String cont = req.getParameter("cont");
        System.out.println(cont + " h1h1h1");

        String res = insert.contactInfo(name, phone, email, address, message);

        if (res.equals("inserted")) {
            HttpSession session = req.getSession();
            session.setAttribute("apoint", cont);
            resp.sendRedirect("index.jsp");
        } else {
            resp.sendRedirect("index.jsp");
        }
    }

  
	
}