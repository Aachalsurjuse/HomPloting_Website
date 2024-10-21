package com.Dao;

import java.sql.Connection;

public interface insert 
{
	public String insertUser(String Name,String password, String Address, String MobNo);
	
	public String AdminData();
	
	public String contactInfo(String name, String phone, String emial, String address,String message);
	

	
//	public String InsertLogo(Connection con, String Fname);
//	
//	public String InsertHeroImg(Connection con, String Fname);
//	
//	public String InsertSideImg(Connection con, String Fname);
	
	public String insertImages(Connection con);
	
	public void InsertPlotInTbl(Connection con, String Pro_Name, int numSeats );
	
	public void InsertProject(Connection con, String Pro_Name, String Pro_img,int numSeats, String msg );

	public String addMoreInfoStatic(Connection con);

	
 
	
  }
