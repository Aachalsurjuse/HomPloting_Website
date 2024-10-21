package com.Dao;
import java.io.File;


import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.connectionFacotry.Connection_Factory;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

public class updateImp  implements update
{

	@Override
	public String update(String Username, String password) 
	{
		String result="";
		Connection con= Connection_Factory.getcon();
		try {
		String sql = "update adminlogin set Username=?,password=? where SN=1";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setNString(1, Username);
		ps.setString(2, password);

		int i = ps.executeUpdate();
		if (i == 1) {
			result = "updated";
		} else {
			result = "failed";
		}
	} catch (Exception e) {
		result = "failed";
		System.out.println(e);
	} finally {
		return result;
	}

	}


	 

	
	@Override
	public String updateImg(Connection con, String Fname) 
	{
		String result="";
		try 
		{
			String sql="update ProjectImage set Img_name= ? where SN=1 ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, Fname);
			int i = ps.executeUpdate();
			if(i==1)
			{
				result="updated";
 			}
			else
			{
				result="not updated";
 			}
 		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return result;
	}
	
	@Override
	public String updateHeroImg(Connection con, String Fname) 
	{
		String result="";
		try 
		{
			String sql="update ProjectImage set Img_name= ? where SN=2 ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, Fname);
			int i = ps.executeUpdate();
			if(i==1)
			{
				result="updated";
 			}
			else
			{
				result="not updated";
 			}
 		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return result;
	}





	@Override
	public String updateSideImg(Connection con, String Fname)
	{

		String result="";
		try 
		{
			String sql="update ProjectImage set Img_name= ? where SN=3 ";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, Fname);
			int i = ps.executeUpdate();
			if(i==1)
			{
				result="updated";
 			}
			else
			{
				result="not updated";
 			}
 		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return result;
	}


 
	 




	@Override
	public String updateplotinfo(Connection con, int SN, String Buyer_Name, String Available_status,
            String Payment_status, int Paid_Amount, int Plot_Prize, String Plot_Size,
            String Direction, String date, String pname) {

    String result = "";

    try {
        System.out.println("in update query =="+pname);

        // Construct the SQL update query
        String sql = "UPDATE `"+pname+"` SET Buyer_Name=?, Available_status=?, Payment_status=?, Paid_Amount=?, Plot_Prize=?, Plot_Size=?, Direction=?, Date=? WHERE SN=?";

        // Create a PreparedStatement
        PreparedStatement ps = con.prepareStatement(sql);

        // Set the values for each parameter
        ps.setString(1, Buyer_Name);
        ps.setString(2, Available_status);
        ps.setString(3, Payment_status);
        ps.setInt(4, Paid_Amount);
        ps.setInt(5, Plot_Prize);

        // Ensure that Plot_Size does not exceed the maximum length allowed by the database column
        int maxPlotSizeLength = 200; // Change this value according to your database column's maximum length
        if (Plot_Size.length() > maxPlotSizeLength) {
            Plot_Size = Plot_Size.substring(0, maxPlotSizeLength);
        }
        ps.setString(6, Plot_Size);

        ps.setString(7, Direction);

        // Convert java.util.Date to java.sql.Date
         ps.setString(8,date);
        ps.setInt(9, SN);

        // Execute the update query
        int i = ps.executeUpdate();

        // Check if the update was successful
        if (i == 1) {
            result = "updated";
            System.out.println("updated");
        } else {
            result = "not updated";
            System.out.println(" not updated");
        }

    } catch (SQLException e) {
        e.printStackTrace();
        result = "error";
    }

    return result;
}


	@Override
	public String updateMoreInfo(Connection con, String slidebarMsg, String projects, String whyChooseUs,
            String completedProjects, String happyFamily, String yearsOfExperience, String email, String mobNo,
            String img) 
   {
    String result = "";
    try {
        String sql = "UPDATE AddMoreInfo SET Slidebar_msg = ?, projects = ?, why_choose_us = ?, completed_projects = ?, Happy_family = ?, year_of_experience = ?, Email = ?, mob_no = ?, about_section_logo = ? WHERE SN = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, slidebarMsg);
        ps.setString(2, projects);
        ps.setString(3, whyChooseUs);
        ps.setInt(4, Integer.parseInt(completedProjects));
        ps.setInt(5, Integer.parseInt(happyFamily));
        ps.setInt(6, Integer.parseInt(yearsOfExperience));
        ps.setString(7, email);
        ps.setString(8, mobNo);
        ps.setString(9, img);
        ps.setInt(10, 1); // Set the id parameter for the WHERE clause

        int i = ps.executeUpdate();
        System.out.println(" executed updateMoreInfo method query" + sql);
        if (i == 1) 
        {
            result = "updated";
        } else 
        {
            result = "notupdated";
        }
        System.out.println("in updateMoreInfo method:=" + result);
    } catch (SQLException e) 
    {
        System.out.println("Error updating info: " + e.getMessage());
        e.printStackTrace(); // Print stack trace for detailed error information
    }
    finally 
    {
        return result;
    }
}



	@Override
	public String updateProfile(Connection con, String name, String num, String add, String pass, int SN) 
	{
		String result="";
		 
		try 
		{
			String sql ="update signupuser set Fullname	=? , Mobno	=?, Address=?, Password=? where SN=?" ;
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, num);
			ps.setString(3, add);
			ps.setString(4, pass);
			ps.setInt(5, SN);
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				result="updated";
				System.out.println("updated");
			}
			else
			{
				result="not updated";
				System.out.println("not updated");
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