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
import com.Pojo.Plot_Details;

@WebServlet("/SeatNo")
public class Plot_Info extends HttpServlet 
{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        Connection con= com.connectionFacotry.Connection_Factory.getcon();
		ReadImp Ri = new ReadImp();
		
		// Get the parameter value as a String
        String snParam = req.getParameter("SN");
        String pname = req.getParameter("pname");
        String pimg = req.getParameter("pimg");
        String pno = req.getParameter("pno");
        
        // Parse the String value to an int
        int SN = Integer.parseInt(snParam);
        System.out.println(SN);

		System.out.println("projname in seatno servlet"+ pname);  
		
		System.out.println("pimg in seatno servlet"+pimg);
        
		System.out.println("SN in seatno servlet= "+SN);
		
		HttpSession session = req.getSession();
		List<Plot_Details> Plots = Ri.ReadPlots(con, SN, pname);
       System.out.println(Plots);
       
       session.setAttribute("snParam",Plots);
       session.setAttribute("pimg",pimg);
       session.setAttribute("pname",pname);
       session.setAttribute("pno", pno);

       resp.sendRedirect("plotInfodisp.jsp");
       
       
    }
}
