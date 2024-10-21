package com.Dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.Pojo.AddMoreInfo;
import com.Pojo.ContactDetail;
import com.Pojo.Plot_Details;
import com.Pojo.ProjectImages;
import com.Pojo.User;
import com.Pojo.projects;

public interface Read
{
    public String cheack(Connection con,String Username, String password);
    public String checkUser(String password , String  MobNo);
    public List<User> ReadAll(Connection con, String Mobno);
	List<ContactDetail> ReadCdetail(Connection con);
 	List<ProjectImages> ReadLogo(Connection con);
 	List<ProjectImages> ReadHeroImg(Connection con);
 	List<ProjectImages> ReadSideImg(Connection con);
 	List<Plot_Details> ReadPlots(Connection con, int SN, String pname);
 	
 	List<Plot_Details> ReadAllBookedPlot(Connection con, String pname);
 	
 	List<projects> ReadAllProjects(Connection con);
	List<AddMoreInfo> ReadAddMoreInfo(Connection con);


 	
}
