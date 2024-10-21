package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

 
public class DeleteImp  implements Delete
{

	@Override
	public String dropTable(Connection con, String pname) {
	    String result = "";
	    try {
	    	
	        String sql = "DROP TABLE `" +pname+ "`";
	        System.out.println("in drop method: " + sql);
	        PreparedStatement ps = con.prepareStatement(sql);
	        int i = ps.executeUpdate();
	        if (i == 0) {
	            result = "dropped";
	        } else {
	            result = "not dropped";
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    } finally {
	        return result;
	    }
	}

	@Override
	public String deleteproject(Connection con, String pname) {
	    String result = "";
	    try {
	        String sql = "DELETE FROM projects WHERE proName=?";
	        System.out.println("in deletepro method: " + pname);
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, pname);
	        int i = ps.executeUpdate();
	        if (i == 1) {
	            result = "deleted";
	            System.out.println(result);
	        } else {
	            result = "not deleted";
	            System.out.println(result);
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    } finally {
	        return result;
	    }
	}

	@Override
	public String deletecontact(Connection con, String mob) 
	{
		String result = "";
	    try {
	        String sql = "DELETE FROM agcontact WHERE Mobno="+mob;
	        System.out.println(sql+"=sql is the sql query");
	        System.out.println("in deletecontact method: " + mob);
	        PreparedStatement ps = con.prepareStatement(sql);
	        int i = ps.executeUpdate();
	        if (i == 1) 
	        {
	            result = "deleted";
	            System.out.println(result);
	        } else 
	        {
	            result = "not deleted";
	            System.out.println(result);
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    } finally {
	        return result;
	    }
	}


	

}