package com.Pojo;

public class ProjectImages 
{
	int SN;
	String Img_Name;
	public int getSN() {
		return SN;
	}
	public void setSN(int sN) {
		SN = sN;
	}
	public String getImg_Name() {
		return Img_Name;
	}
	public void setImg_Name(String img_Name) {
		Img_Name = img_Name;
	}
	public ProjectImages(int sN, String img_Name) {
		super();
		SN = sN;
		Img_Name = img_Name;
	}
	public ProjectImages() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ProjectImages [SN=" + SN + ", Img_Name=" + Img_Name + "]";
	}
	
	
	
}
