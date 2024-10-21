package com.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.Dao.InsertImp;
import com.Dao.ReadImp;
import com.Dao.updateImp;
import com.Pojo.ProjectImages;

@WebServlet("/AddSideImg")
@MultipartConfig
public class Side_Img extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
		InsertImp Dao= new InsertImp();
		ReadImp Rdao= new ReadImp();
		updateImp uDao = new updateImp();
		
		 Part ps = req.getPart("sfile");
		 String Fname = ps.getSubmittedFileName();
		 System.out.println(Fname);
		 InputStream io = ps.getInputStream();
		 byte[] b = io.readAllBytes();
		 
		 try {
			    String path = "C:\\Users\\Anas\\OneDrive\\Desktop\\sat\\homplot\\src\\main\\webapp\\Project_img\\"+Fname;

			    FileOutputStream fio = new FileOutputStream(path);
			    fio.write(b);
			    fio.close();
			    System.out.println("File saved to path: " + path);
			} 
		 catch (IOException e) 
		    {
			    System.err.println("Error while saving file: " + e.getMessage());
			}

		     HttpSession session = req.getSession();
		
		   //String res = Dao.InsertSideImg(con, Fname);
		      String res = uDao.updateSideImg(con, Fname);
		   List<ProjectImages> pi2 = Rdao.ReadSideImg(con)  ;
		  System.out.println(pi2);
 		 if(res.equals("updated"))
		 {
 			 System.out.println("Setting session attribute with pi2: " + pi2);
 			 session.setAttribute("simage", pi2);
			 resp.sendRedirect("index.jsp");
		 }
		 else
		 {
			 resp.sendRedirect("admin.jsp");
		 }
	}


	}

