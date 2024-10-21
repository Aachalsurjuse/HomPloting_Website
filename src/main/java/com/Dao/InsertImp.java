package com.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.connectionFacotry.Connection_Factory;

public class InsertImp implements insert
{
	String result="";
    Connection con= Connection_Factory.getcon();
	public String AdminData()
	{	
		try
   	{
   		String sql0="select * from adminlogin where  SN=1";
   		PreparedStatement ps1 = con.prepareStatement(sql0);
   		ResultSet rs = ps1.executeQuery();
   		if(rs.next()!=true)
   		{
   		
   		
   	 String sql="insert into adminlogin (Username,password) values ('admin', '123')";
   	 Statement cs = con.createStatement();
   	 cs.execute(sql);
   		}
   	}
   	catch(Exception e)
   	{
   		return result;
   	}
		finally
		{
			return result;
		}
		
   	
		
	}
	@Override
	public String insertUser(String Name, String MobNo, String Address,String password ) 
	{
        String result="";
		
		try 
		{
			Connection con= Connection_Factory.getcon();
			String sql = "insert into signupuser (Fullname, MobNo, Address, password) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, Name);
			ps.setString(2, MobNo);
			ps.setString(3,Address);
			ps.setString(4, password);
			int i =ps.executeUpdate();
			
			if(i==1)
			{
				System.out.println("reached");
				result= "insert";
			}
			else
			{
				System.out.println("not reached");
				result="not inserted";
			}
			
		} 
		catch (Exception e)
		{
			result="not inserted";
		}
		finally 
		{
			return result;
		}
	}
	@Override
	public String contactInfo(String name, String phone, String email, String address, String message)
	{
	    String result = "";

 	    
	    try {
	        con = Connection_Factory.getcon();
	        String sql = "INSERT INTO AgContact (Fullname, Mobno, Email, Address, Message) VALUES (?, ?, ?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        
	        ps.setString(1, name);
	        ps.setString(2, phone);
	        ps.setString(3, email);
	        ps.setString(4, address);
	        ps.setString(5, message);
	        
	        int i = ps.executeUpdate();
	        
	        if (i == 1) 
	        {
	            result = "inserted";
	        } else {
	            result = "not inserted";
	        }
	    } catch (Exception e) {
	        e.printStackTrace();  // Prints the stack trace for better debugging
	        result = "not inserted";
	    }  	    
	    
	    return result;
	}
//	@Override
//	public String InsertLogo(Connection con, String Fname)
//	
//	{
//		String result="";
//		try 
//		{
//			String sql="insert into ProjectImage (Img_name) values(?)";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, Fname);
//			int i = ps.executeUpdate();
//			if(i==1)
//			{
//				result="inserted";
// 			}
//			else
//			{
//				result="not inserted";
// 			}
// 		} 
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		 
//		return result;
//	}
//
//	@Override
//	public String InsertHeroImg(Connection con, String Fname)
//	
//	{
//		String result="";
//		try 
//		{
//			String sql="insert into ProjectImage (Img_name) values(?)";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, Fname);
//			int i = ps.executeUpdate();
//			if(i==1)
//			{
//				result="inserted";
// 			}
//			else
//			{
//				result="not inserted";
// 			}
// 		} 
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		 
//		return result;
//	}
//	@Override
//	public String InsertSideImg(Connection con, String Fname)
//	{
//		String result="";
//		try 
//		{
//			String sql="insert into ProjectImage (Img_name) values(?)";
//			PreparedStatement ps = con.prepareStatement(sql);
//			ps.setString(1, Fname);
//			int i = ps.executeUpdate();
//			if(i==1)
//			{
//				result="inserted";
// 			}
//			else
//			{
//				result="not inserted";
// 			}
// 		} 
//		catch (Exception e)
//		{
//			System.out.println(e);
//		}
//		 
//		return result;
//	}
	int id=100;
	public void InsertPlotInTbl(Connection con, String Pro_Name, int numSeats) {
	    try {
 	        // Retrieve the current value of id from the table
 	        System.out.println("number of seat "+numSeats);
	        String sql = "insert into `"+Pro_Name+"` (SN) values (?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        System.out.println("exexuted in generated plot mehtod");
	        for (int i = 1; i <= numSeats; i++) {
	            System.out.println("in for loop");
	            ps.setInt(1, i);
	            ps.addBatch();
	        }
	        
	        ps.executeBatch();
	        id++; // Increment id for the next project
	        System.out.println("inserted in InsertPlotInTbl");
	        
	        // Update the id in the table for the next project
 	    } catch (Exception e) {
	        System.out.println(e);
	    }
		id++;

	}
	@Override
	public void InsertProject(Connection con, String Pro_Name, String Pro_img, int numSeats,String msg) 
	{
		try {
	        String sql = "INSERT INTO Projects (proName, proImg, PlotNo, Msg) VALUES (?, ?, ?,?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, Pro_Name);
	        ps.setString(2, Pro_img);
	        ps.setInt(3, numSeats);
	        ps.setString(4, msg);
	        int i = ps.executeUpdate();
	        if (i == 1) 
	        {
	            System.out.println("Project inserted");
	        } 
	        else 
	        {
	            System.out.println("Project not inserted");
	        }
	        ps.close(); // Close PreparedStatement
	    } catch (SQLException e) {
	        System.out.println("Error inserting project: " + e.getMessage());
	        e.printStackTrace(); // Print stack trace for detailed error information
	    }		 
	}
	@Override
	public String insertImages(Connection con) 
	{
		String result="";
		try {
	        String sql = "INSERT INTO projectimage (SN, Img_name) VALUES (?, ?), (?, ?), (?, ?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, 1);
	        ps.setString(2, "plotLogo.jpeg");
	        ps.setInt(3, 2);
	        ps.setString(4, "plotimg.jpeg");
	        ps.setInt(5, 3);
	        ps.setString(6, "sideimg.jpeg");
	        
	        System.out.println("Executing SQL query: " + sql);
	        int i = ps.executeUpdate();
	        if (i > 0) 
	        {
	            result = "inserted";
	        } else 
	        {
	            result="notinserted";
	        }
	        ps.close(); // Close PreparedStatement
	    } catch (SQLException e) 
		{
	        System.out.println("Error inserting images: " + e.getMessage());
	        e.printStackTrace(); // Print stack trace for detailed error information
	    }
		finally 
		{
			return result;
		}
	}
	@Override
	public String addMoreInfoStatic(Connection con) {
	    String result = "";
	    try {
	        String sql = "INSERT INTO AddMoreInfo (SN, Slidebar_msg, projects, why_choose_us, completed_projects, Happy_family, year_of_experience, Email, mob_no, about_section_logo) VALUES (1, 'we provided best services that you can trust', 'Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.', 'Lorem ipsum sit amet consectetur adipiscing elit. Vivamus et erat in lacus convallis sodales.', 557, 4379, 32, 'example@gmail.com', '2356890956', 'logo.png')";
	        Statement stmt = con.createStatement();

	        int i = stmt.executeUpdate(sql);
	        System.out.println("Executed addMoreInfoStatic method query: " + sql);
	        if (i == 1) {
	            result = "inserted";
	        } else {
	            result = "notinserted";
	        }
	        System.out.println("In addMoreInfoStatic method: " + result);
	    } catch (SQLException e) {
	        System.out.println("Error inserting images: " + e.getMessage());
	        e.printStackTrace(); // Print stack trace for detailed error information
	    } finally {
	        return result;
	    }
	}

}