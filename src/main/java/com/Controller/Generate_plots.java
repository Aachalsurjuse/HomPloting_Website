package com.Controller;

import java.io.FileOutputStream;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connectionFacotry.Connection_Factory;
import com.Dao.CreateImp;
import com.Dao.InsertImp;
import com.Dao.ReadImp;
import com.Pojo.Plot_Details;

@WebServlet("/generateplots")
@MultipartConfig
public class Generate_plots extends HttpServlet {
    Connection con = Connection_Factory.getcon();
    ReadImp Ri = new ReadImp();
    CreateImp cdao = new CreateImp();
    InsertImp idao= new InsertImp();

    
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
    	String pname = req.getParameter("Pro_name");
    	String msg = req.getParameter("P_msg");
    	String pimg1 = req.getParameter("pimg"); 
        int pno = Integer.parseInt(req.getParameter("numSeats"));
   

        Part ps = req.getPart("pimg");
		 String pimg = ps.getSubmittedFileName();
		 System.out.println(pimg);
		 InputStream io = ps.getInputStream();
		 byte[] b = io.readAllBytes();
		 
		 try {
			    String path = "C:\\Users\\Anas\\OneDrive\\Desktop\\sat\\homplot\\src\\main\\webapp\\Project_Img\\"+pimg;
			    System.out.println("File saved to path: " + path);
			    FileOutputStream fio = new FileOutputStream(path);
			    fio.write(b);
			    fio.close();
			    

			} 
		 
		 
		 catch (IOException e) 
		    {
			    System.err.println("Error while saving file: " + e.getMessage());
			}


        
    	//method for create table for diff project
    	String res = cdao.createPlotsTable(con, pname);
     
    		System.out.println("in if block");
    		//method for insert data in particular project
    		idao.InsertPlotInTbl(con, pname, pno);
    		System.out.println("inserted in table");
    		idao.InsertProject(con, pname, pimg, pno, msg);
    	

         //req.getSession().setAttribute("seatsGenerated", true); // Set session attribute
        req.getSession().setAttribute("pno", pno); // Set session attribute
        resp.sendRedirect("seats.jsp?pno=" + pno + "&pname=" + pname+"&pimg="+pimg);
 // Redirect to JSP page after generating plots
    }

     
}