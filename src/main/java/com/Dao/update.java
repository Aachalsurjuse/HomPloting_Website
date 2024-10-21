package com.Dao;

import java.sql.Connection;

import java.util.Date;

public interface update 
{
	public String update(String Username,String password);
	public String updateImg(Connection con,String Fname );
	public String updateHeroImg(Connection con,String Fname );
	public String updateSideImg(Connection con,String Fname );
 	 
	public String updateplotinfo(Connection con, int SN, String Buyer_Name, String Available_status, String Payment_status,
			int Paid_Amount, int Plot_Prize, String Plot_Size, String Direction, String date, String pname);

    public String updateProfile(Connection con, String name, String num, String add, String pass, int SN);
	String updateMoreInfo(Connection con, String slidebarMsg, String projects, String whyChooseUs,
			String completedProjects, String happyFamily, String yearsOfExperience, String email, String mobNo,
			String img);
}