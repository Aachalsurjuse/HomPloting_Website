package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.connectionFacotry.Connection_Factory;
import com.Pojo.AddMoreInfo;
import com.Pojo.ContactDetail;
import com.Pojo.Plot_Details;
import com.Pojo.ProjectImages;
import com.Pojo.User;
import com.Pojo.projects;

public class ReadImp implements Read

{
	String result="";
	
	@Override
	public String cheack(Connection con,String Username, String password) 
	{
		
			try {
				String sql = "select * from adminlogin";
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);

				while (rs.next()) {

					if (rs.getString(2).equals(Username) && rs.getString(3).equals(password)) {
						result = "exits";
						break;
					} else {
						result = "not exits";
					}
				}
			} catch (Exception e) {
				result = "not exits";
			} finally 
			{
				return result;
			}
	}

	@Override
	public String checkUser(String password, String MobNo) 
	{
		try 
 		{
			Connection con= Connection_Factory.getcon();
			
			String sql = "select * from signupuser";
			PreparedStatement ps = con.prepareStatement(sql);
 			ResultSet rs = ps.executeQuery();

			while (rs.next()) 
			{

				if (rs.getString(3).equals(MobNo)&& rs.getString(5).equals(password)) {
					result = "exits";
					break;
				} else {
					result = "not exits";
				}
			}
		} catch (Exception e) 
 		{
			result = "not exits";
		} finally
 		{
			return result;
		}

 	}

		
 
	public List<User> ReadUser(Connection con, String MOb) 
	{
		List<User> lu = new ArrayList<User>();

		  try
		  {
			  String sql= "select * from signupuser where Mobno=?";
			  PreparedStatement ps = con.prepareStatement(sql);
			  
			  ps.setString(1,MOb);
			  
			  ResultSet rs1 = ps.executeQuery();
			  
			  while(rs1.next())
				{
					User u = new User();
					u.setSN(rs1.getInt(1));
					u.setFullname(rs1.getString(2));
					u.setMobNo(rs1.getString(3));
					u.setAddress(rs1.getString(4));
					u.setPassword(rs1.getString(5));
					
					lu.add(u);
					
				}


			  
		  }
		  catch (Exception e)
		  {
			System.out.println(e);
		
		  }
		  finally
		  {
			  return lu;
		  
		  }
 	 
	  }

	@Override
	public List<User> ReadAll(Connection con, String Mobno) 
	{
		List<User> lu = new ArrayList<User>();

		  try
		  {
			  String sql= "select * from signupuser where Mobno=?";
			  PreparedStatement ps = con.prepareStatement(sql);
			  
			  ps.setString(1,Mobno);
			  
			  ResultSet rs1 = ps.executeQuery();
			  
			  while(rs1.next())
				{
					User u = new User();
					u.setSN(rs1.getInt(1));
					u.setFullname(rs1.getString(2));
					u.setMobNo(rs1.getString(3));
					u.setAddress(rs1.getString(4));
					u.setPassword(rs1.getString(5));
					
					lu.add(u);
					
				}


			  
		  }
		  catch (Exception e)
		  {
			System.out.println(e);
		
		  }
		  finally
		  {
			  return lu;
		  
		  }
	 

	}

ArrayList<ContactDetail> Cl = new ArrayList<ContactDetail>();
	
	@Override
	public List<ContactDetail> ReadCdetail(Connection con) 
	{
		
		 try
		  {
			  String sql= "select * from agcontact ";
			  Statement cs = con.createStatement();
			  ResultSet rs = cs.executeQuery(sql);
			  
			  
			  
			  while(rs.next())
				{
					
					
					ContactDetail cd = new ContactDetail();
					cd.setSN(rs.getInt(1));
					cd.setFullname(rs.getString(2));
					cd.setMobno(rs.getString(3));
					cd.setEmail(rs.getString(4));
					cd.setAddress(rs.getString(5));
					cd.setMessage(rs.getString(6));
					
					Cl.add(cd);
					System.out.println("servlet"+cd);
					
				}


			  
		  }
		  catch (Exception e)
		  {
			System.out.println(e);
		}
		  finally
		  {
			  return Cl;
		  
	}
	}
	

	
	ArrayList<ProjectImages> pi = new ArrayList<ProjectImages>();

	@Override
	public List<ProjectImages> ReadLogo(Connection con) 
	{
		try 
		{
			String sql = "select * from projectimage where SN=1";
			Statement st = con.createStatement();
			 ResultSet rs = st.executeQuery(sql);
 			
			 while(rs.next())
				{
					
				 ProjectImages cd = new ProjectImages();
 					cd.setSN(rs.getInt(1));
 					 cd.setImg_Name(rs.getString(2));	
 					 pi.add(cd);
 					System.out.println("servlet"+cd);
					
				}			
		} catch (Exception e) {
			result="exp";
			System.out.println("ReadImp-->readProject:"+e);
		}
		finally
		{
			return pi;
		}
	
	}
	
	ArrayList<ProjectImages> pi1 = new ArrayList<ProjectImages>();

	@Override
	public List<ProjectImages> ReadHeroImg(Connection con) 
	{
		try 
		{
			String sql = "select * from projectimage where SN = 2 ";
			 PreparedStatement ps = con.prepareStatement(sql);
 			 ResultSet rs = ps.executeQuery(sql);
 			
			 while(rs.next())
				{
					
				 ProjectImages cd = new ProjectImages();
 					cd.setSN(rs.getInt(1));
 					 cd.setImg_Name(rs.getString(2));	
 					 pi1.add(cd);
 					System.out.println("servlet"+cd);
					
				}			
		} catch (Exception e) {
			result="exp";
			System.out.println("ReadImp-->readProject:"+e);
		}
		finally
		{
			return pi1;
		}
	
	}

	ArrayList<ProjectImages> pi2 = new ArrayList<ProjectImages>();

	@Override
	public List<ProjectImages> ReadSideImg(Connection con)
	{
		try 
		{
			String sql = "select * from projectimage where SN = 3 ";
			 PreparedStatement ps = con.prepareStatement(sql);
 			 ResultSet rs = ps.executeQuery(sql);
 			
			 while(rs.next())
				{
		
				 ProjectImages cd = new ProjectImages();
 					cd.setSN(rs.getInt(1));
 					 cd.setImg_Name(rs.getString(2));	
 					 pi2.add(cd);
 					System.out.println("servlet"+cd);
					
				}			
		} catch (Exception e) {
			result="exp";
			System.out.println("ReadImp-->readProject:"+e);
		}
		finally
		{
			return pi2;
		}
	
	}
	
	
	ArrayList<Plot_Details> pd = new ArrayList<Plot_Details>();
	@Override
	public List<Plot_Details> ReadPlots(Connection con, int SN, String pname) 
	{
		try
		  {
			  String sql= "select * from `"+pname+"` where SN= ? ";
			  PreparedStatement ps = con.prepareStatement(sql);
			  ps.setInt(1, SN);
 			  ResultSet rs = ps.executeQuery( );
			  
			  
			  
			  while(rs.next())
				{
					
					
				  Plot_Details pds = new Plot_Details();
				  pds.setSN(rs.getInt("SN"));
				  pds.setBuyer_Name(rs.getString(3));
				  pds.setAvailable_status(rs.getString(4));
				  pds.setPayment_status(rs.getString(5));
				  pds.setPaid_Amount(rs.getInt(6));
				  pds.setPlot_Prize(rs.getInt(7));
				  pds.setPlot_Size(rs.getString(8));
				  pds.setDirection(rs.getString(9));
				  pds.setDate(rs.getString(10));
					
					pd.add(pds);
					System.out.println("servlet : "+pd);
					
				}	  
		  }
		  catch (Exception e)
		  {
			System.out.println(e);
		}
		  finally
		  {
			  return pd;
		  
	}

	}

	ArrayList<Plot_Details> pdls = new ArrayList<Plot_Details>();

	@Override
	public List<Plot_Details> ReadAllBookedPlot(Connection con, String pname) 
	{
	    try 
	    {
	        System.out.println("in read method--"+pname);
	        String table = pname;

	        // Clear the list before adding new data
	        pdls.clear();

	        String sql = "SELECT * FROM `"+pname+"`";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        while(rs.next())
	        {
	            if(table!=null)
	            {
	                Plot_Details pds = new Plot_Details();
	                pds.setSN(rs.getInt(2));
	                pds.setBuyer_Name(rs.getString(3));
	                pds.setAvailable_status(rs.getString(4));
	                pds.setPayment_status(rs.getString(5));
	                pds.setPaid_Amount(rs.getInt(6));
	                pds.setPlot_Prize(rs.getInt(7));
	                pds.setPlot_Size(rs.getString(8));
	                pds.setDirection(rs.getString(9));
	                pds.setDate(rs.getString(10));

	                pdls.add(pds);
	                System.out.println("servlet : "+pdls);
	            }
	            else
	            {
	                System.out.println("execution occurred");
	            }
	        }

	    } 
	    catch (Exception e) 
	    {
	        // TODO: handle exception
	        System.out.println(e);
	    }
	    finally
	    {
	        return pdls;
	    }
	}


	ArrayList<projects> alp = new ArrayList<projects>();

	@Override
	public List<projects> ReadAllProjects(Connection con) 
	{
		try 
		{
			// Clear the list before adding new data
	        alp.clear();
	        
			 String sql= "select * from projects";
			  PreparedStatement ps = con.prepareStatement(sql);
 			  ResultSet rs = ps.executeQuery( );
 			  
 			 while(rs.next())
				{
					projects p = new projects();
					
					p.setId(rs.getInt(1));
					p.setProName(rs.getString(2));
					p.setProImg(rs.getString(3));
					p.setPlotNo(rs.getInt(4));
					p.setMsg(rs.getString(5));
					
				   alp.add(p);
					
 					System.out.println("servlet : "+ alp);
				}

		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		finally
		{
			return alp;
		}
 	}
	
	ArrayList<AddMoreInfo> ami = new ArrayList<AddMoreInfo>();

	@Override
	public List<AddMoreInfo> ReadAddMoreInfo(Connection con) 
	{
		try 
		{
			// Clear the list before adding new data
	        ami.clear();
	        
			 String sql= "select * from AddMoreInfo";
			  PreparedStatement ps = con.prepareStatement(sql);
 			  ResultSet rs = ps.executeQuery( );
 			  
 			 while(rs.next())
				{
 				AddMoreInfo ad = new AddMoreInfo();
					
					ad.setId(rs.getInt(1));
					ad.setSlidebarMsg(rs.getString(2));
					ad.setProjects(rs.getString(3));
					ad.setWhyChooseUs(rs.getString(4));
					ad.setCompletedProjects(rs.getInt(5));
					ad.setHappyFamily(rs.getInt(6));
					ad.setYearsOfExperience(rs.getInt(7));
					ad.setEmail(rs.getString(8));
					ad.setMobNo(rs.getString(9));
					ad.setAboutSectionLogo(rs.getString(10));
					
				   ami.add(ad);
					
 					System.out.println("servlet : "+ ami);
				}

		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		finally
		{
			return ami;
		}
 	}

}
