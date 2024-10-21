package com.Controller;

import java.io.IOException;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.ReadImp;
import com.Dao.updateImp;
import com.Pojo.Plot_Details;
@WebServlet("/EditPlotBooking")
public class EditPlotBooking extends HttpServlet {

     @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	    Connection con= com.connectionFacotry.Connection_Factory.getcon();
        ReadImp rdao = new ReadImp();
        updateImp u = new updateImp();

        String Buyer_Name = req.getParameter("Buyer_Name");
        String Available_status = req.getParameter("Available_status");
        String Payment_status = req.getParameter("Payment_status");
        int Paid_Amount = Integer.parseInt(req.getParameter("Paid_Amount"));
        int Plot_Prize = Integer.parseInt(req.getParameter("Plot_Prize"));
        String Plot_Size = req.getParameter("Plot_Size");
        System.out.println(Plot_Size);
        String Direction = req.getParameter("Direction");
        String date = req.getParameter("Date");
        System.out.println(date);
         
        String sn = req.getParameter("SN");
        String pname = req.getParameter("pname");

        if (sn != null && !sn.isEmpty()) {
            try {
                int SN = Integer.parseInt(sn);
                System.out.println("SN: " + SN);

                String res = u.updateplotinfo(con, SN, Buyer_Name, Available_status, Payment_status, Paid_Amount, Plot_Prize, Plot_Size, Direction, date, pname);

                if (res.equals("updated")) {
                    ArrayList<Plot_Details> apd = (ArrayList<Plot_Details>) rdao.ReadAllBookedPlot(con, pname);

                    HttpSession session = req.getSession();
                    session.setAttribute("plotdetail", apd);
                    resp.sendRedirect("readplot.jsp");

                } else {
                    resp.sendRedirect("bookDetail.jsp");
                }

            } catch (NumberFormatException e) {
                System.out.println("Invalid SN format: " + sn);
            }
        } else {
            System.out.println("SN parameter is missing");
        }
    }}

