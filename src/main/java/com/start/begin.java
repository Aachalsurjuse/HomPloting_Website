package com.start;

import java.sql.Connection;

import javax.servlet.ServletContextEvent;

import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.Dao.CreateImp;
import com.Dao.InsertImp;
import com.connectionFacotry.Connection_Factory;


/**
 * Application Lifecycle Listener implementation class begin
 *
 */
@WebListener
public class begin implements ServletContextListener {

   public void contextDestroyed(ServletContextEvent sce)  
     { 
        	
     }

  public void contextInitialized(ServletContextEvent sce)  
    { 
	        Connection con = Connection_Factory.getcon();
	    	CreateImp imp= new  CreateImp();
	    	imp.createDatabase();
	    	imp.table();  	
	    	
	    	InsertImp insert = new InsertImp();
	    	String res = insert.addMoreInfoStatic(con);
	    	}
	
}
