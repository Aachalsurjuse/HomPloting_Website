package com.Dao;

import java.sql.Connection;

public interface Delete 
{
	public String deleteproject(Connection con, String pname);
	public String dropTable(Connection  con,String pname );
	public String deletecontact(Connection  con,String mob );

}
