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

@WebServlet("/AddHeroImg")
@MultipartConfig
public class Hero_Img extends HttpServlet 
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
		InsertImp Dao= new InsertImp();
		ReadImp Rdao= new ReadImp();
		updateImp uDao = new updateImp();
		
		 Part ps = req.getPart("Hfile");
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
		
		   //String res = Dao.InsertHeroImg(con, Fname);
		      String res = uDao.updateHeroImg(con, Fname);
		   List<ProjectImages> pi1 = Rdao.ReadHeroImg(con);   
		   System.out.println("pi1"+pi1);
 		 if(res.equals("updated"))
		 {
 			 System.out.println("Setting session attribute with pi: " + pi1);
 			 session.setAttribute("himg", pi1);
			 resp.sendRedirect("index.jsp");
		 }
		 else
		 {
			 resp.sendRedirect("admin.jsp");
		 }
		 
		 

	}
}
