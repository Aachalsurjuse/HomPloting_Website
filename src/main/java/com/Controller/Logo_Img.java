

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


@WebServlet("/AddLogo")
@MultipartConfig
public class Logo_Img extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection con= com.connectionFacotry.Connection_Factory.getcon();
        InsertImp Dao = new InsertImp();
        ReadImp Rdao = new ReadImp();
        updateImp uDao = new updateImp();
        Part ps = req.getPart("Lfile");
        String Fname = ps.getSubmittedFileName();
        InputStream io = ps.getInputStream();
        byte[] b = io.readAllBytes();

        try {
		    String path = "C:\\Users\\Anas\\OneDrive\\Desktop\\sat\\homplot\\src\\main\\webapp\\Project_img\\"+Fname;

            FileOutputStream fio = new FileOutputStream(path);
            fio.write(b);
            fio.close();
            System.out.println("File saved to path: " + path);
        } catch (IOException e) {
            System.err.println("Error while saving file: " + e.getMessage());
        }

        HttpSession session = req.getSession();

        String res = uDao.updateImg(con, Fname);
        List<ProjectImages> pi = Rdao.ReadLogo(con);
        System.out.println(pi);
        
        if (res.equals("updated")) {
            System.out.println("Setting session attribute with pi: " + pi);
            session.setAttribute("imgt", pi);
            // Send a response to indicate successful image upload
            resp.setContentType("text/plain");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write("Image uploaded successfully");
            resp.sendRedirect("index.jsp");
        } else {
            // Send a response to indicate failure in image upload
            resp.setContentType("text/plain");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write("Failed to upload image");
        }
    }
}
