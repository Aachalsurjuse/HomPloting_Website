package com.connectionFacotry;

import java.sql.Connection;
import java.sql.DriverManager;
 
 
public class Connection_Factory 
{
	 
		private static Connection con;
	    public static Connection getcon() 
	    {
	    	try 
			{

				Class.forName("com.mysql.cj.jdbc.Driver");

				//before database creation
				//String url ="jdbc:mysql://localhost:3306/";

				//after database creation.
				String url ="jdbc:mysql://localhost:3306/PlottingProject";
				String username="root";
				String pass="";
				
				con= DriverManager.getConnection(url,username,pass);
				System.out.println(con);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			finally 
			{
				return con;
			}
	}
		
	
}


