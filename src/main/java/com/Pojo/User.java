package com.Pojo;

public class User
{
	  int SN;
	 String Fullname;
	 String password;
	 String Address;
	 public int getSN() {
		return SN;
	}
	public void setSN(int sN) 
	{
		SN = sN;
	}
	public String getFullname() 
	{
		return Fullname;
	}
	public void setFullname(String fullname) 
	{
		Fullname = fullname;
	}
	public String getPassword() 
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address)
	{
		Address = address;
	}
	public String getMobNo() 
	{
		return MobNo;
	}
	public void setMobNo(String mobNo) 
	{
		MobNo = mobNo;
	}
	@Override
	public String toString() {
		return "User [SN=" + SN + ", Fullname=" + Fullname + ", password=" + password + ", Address=" + Address
				+ ", MobNo=" + MobNo + "]";
	}
	public User() 
	{
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int sN, String fullname, String password, String address, String mobNo) 
	{
		super();
		SN = sN;
		Fullname = fullname;
		this.password = password;
		Address = address;
		MobNo = mobNo;
	}
	String MobNo;
	 
	 }
