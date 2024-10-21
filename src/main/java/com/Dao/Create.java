package com.Dao;

import java.sql.Connection;

public interface Create 
{
	public void createDatabase();
	public void table();
	//method for create the table for diff projects
	public String createPlotsTable(Connection con, String tbl_Name );
 }
