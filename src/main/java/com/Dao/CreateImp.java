package com.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.connectionFacotry.Connection_Factory;

public  class CreateImp implements Create
{
	//method for database creation
	@Override
	public void createDatabase() 
	{
		try
		{
			Connection con= Connection_Factory.getcon();
			String sql = "create database PlottingProject"; 
	        Statement st = con.createStatement();
	        st.executeUpdate(sql);
		}
		catch (Exception e) 
		{
			System.out.println(e);
 		}
	}

	//methods for all table creation just after start a server firstly this tables are created 
	@Override
	public void table() 
	{
		try
		{
			Connection con= Connection_Factory.getcon();
			
			//first table for adminlogin
			String sql="create table adminlogin(SN INT(10) AUTO_INCREMENT PRIMARY KEY,Username varchar(50),password varchar(50))";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();
			System.out.println("adminlogin table created");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}	
			
		try
		{
			Connection con= Connection_Factory.getcon();
	    	//second table for signupUser	
  		    String sql1= "CREATE TABLE  SignupUser ("
 				+ "    SN INT AUTO_INCREMENT PRIMARY KEY,"
 				+ "    Fullname VARCHAR(50) NOT NULL,"
 				+ "    Mobno VARCHAR(15) NOT NULL,"
 				+ "    Address VARCHAR(40) NOT NULL,"
 				+ "    Password VARCHAR(30) NOT NULL"
 				+ ")";
		     PreparedStatement ps1 = con.prepareStatement(sql1);
			 ps1.executeUpdate();
		   	 System.out.println("signup user table created");
		}
		   	catch (Exception e) 
			{
				System.out.println(e);
			}
		   	 		
		try
		{
			Connection con= Connection_Factory.getcon();
		//third table for agcontact 
		   	         String sql2= "CREATE TABLE  AgContact ("
			           + "SN INT AUTO_INCREMENT PRIMARY KEY,"
			           + "Fullname VARCHAR(50) Not Null,"
			           + "Mobno VARCHAR(15) Not Null,"
			           + "Email VARCHAR(40) Not Null,"
			           + "Address VARCHAR(40) Not Null,"
			           + "Message VARCHAR(255) Not Null"
			           + ");";
			
			     PreparedStatement ps2 = con.prepareStatement(sql2);
		         ps2.executeUpdate();
			   	 System.out.println("agcontact table created");
		}
	   	catch (Exception e) 
		{
			System.out.println(e);
		}        
		
		try
		{
			Connection con= Connection_Factory.getcon();
			//fourth table for  ProjectImage
			String sql3= "CREATE TABLE  projectimage ("
			           + "SN INT AUTO_INCREMENT PRIMARY KEY,"
			           + "Img_name VARCHAR(50)"
			           + ");";
			
			PreparedStatement ps3 = con.prepareStatement(sql3);
		    ps3.executeUpdate();
			System.out.println("ProjectImage table created");

			InsertImp idao = new InsertImp();
			String res = idao.insertImages(con);
			if(res.equals("inserted"))
			{
				System.out.println("inserted in images table");
			}
			else
			{
				System.out.println("not inserted in iamge table");
			}
			
		}
	   	catch (Exception e) 
		{
			System.out.println(e);
		} 
		
		try
		{
			Connection con= Connection_Factory.getcon();
			//fifth table for plot details
			 String sql4= "CREATE TABLE  Plot_Details ("
		 				+ "    SN INT AUTO_INCREMENT PRIMARY KEY,"
		 				+ "    Buyer_Name VARCHAR(50) ,"
		 				+ "    Available_status VARCHAR(15),"
		 				+ "    Payment_status VARCHAR(40),"
		 				+ "    Paid_Amount INT(30),"
		 				+ "    Plot_Prize INT(30) ,"
		 				+ "    Plot_Size INT(30) ,"
		 				+ "    Direction VARCHAR(30),"
		 				+ "    Date INT(30)"
		 				+ ")";
			
			 PreparedStatement ps4 = con.prepareStatement(sql4);
				int j = ps4.executeUpdate(sql4);
				System.out.println("Plot_Details table created");
		}
	   	catch (Exception e) 
		{
			System.out.println(e);
		} 
				
		try
		{
			Connection con= Connection_Factory.getcon();
		//six table for Projects
			String sql5= "CREATE TABLE Projects ("
		            + "    ID INT AUTO_INCREMENT PRIMARY KEY,"
 		            + "    proName VARCHAR(50),"
		            + "    proImg VARCHAR(15),"
		            + "    plotNo INT(30),"
		            + "    Msg VARCHAR(50)"
		            + ");";

			 
			 PreparedStatement ps5 = con.prepareStatement(sql5);
				int k = ps5.executeUpdate(sql5);
				System.out.println("Projects table created");
		}
	   	catch (Exception e) 
		{
			System.out.println(e);
		} 
		
		try
		{
			Connection con= Connection_Factory.getcon();
		//seventh table for addmoreinformation
			String sql5= "CREATE TABLE AddMoreInfo ("
		            + "    SN INT AUTO_INCREMENT PRIMARY KEY,"
 		            + "    Slidebar_msg VARCHAR(255),"
		            + "    projects VARCHAR(255),"
		            + "    why_choose_us VARCHAR(255),"
		            + "    completed_projects INT(50),"
		            + "    Happy_family INT(50),"
		            + "    year_of_experience INT(50),"
		            + "    Email VARCHAR(50),"
		            + "    mob_no VARCHAR(25),"
		            + "    about_section_logo VARCHAR(50)"
		            + ");";

			 
			 PreparedStatement ps5 = con.prepareStatement(sql5);
				int k = ps5.executeUpdate(sql5);
				System.out.println("AddMoreInfo table created");
		}
	   	catch (Exception e) 
		{
			System.out.println(e);
		} 
		
	}

	@Override
	public String createPlotsTable(Connection con,String tbl_Name)  
	{
	   // String tname = tbl_Name.replaceAll("\\s", "_"); // Replace spaces with underscores
		String result="";
		String tname = tbl_Name;
		try {
			String sql= "CREATE TABLE `"+tname+"`("
	 				+ "    ID INT (50),"
	 				+ "    SN INT AUTO_INCREMENT PRIMARY KEY,"
	 				+ "    Buyer_Name VARCHAR(50) ,"
	 				+ "    Available_status VARCHAR(15),"
	 				+ "    Payment_status VARCHAR(40),"
	 				+ "    Paid_Amount INT(30),"
	 				+ "    Plot_Prize INT(30) ,"
	 				+ "    Plot_Size VARCHAR(30) ,"
	 				+ "    Direction VARCHAR(30)," 
	 				+ "    Date VARCHAR(30),"
	 				+ "    plotImg VARCHAR(30)"
	 				+ ");";
			
			PreparedStatement ps = con.prepareStatement(sql);
	 		int i = ps.executeUpdate();
	 		if(i==1)
	 		{
	 			result = "tableCreated";
	 			System.out.println(result);
	 		}
	 		else
	 		{
	 			result = "table not created";
	 			System.out.println(result);
	 		}
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		finally {
			return result;
		}
 	 		
	}

	 

	 

}
