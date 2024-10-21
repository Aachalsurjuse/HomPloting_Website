package com.Pojo;

public class projects 

{
	int id;
	String proName;
	String proImg;
	int plotNo;
	String msg;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProImg() {
		return proImg;
	}
	public void setProImg(String proImg) {
		this.proImg = proImg;
	}
	public int getPlotNo() {
		return plotNo;
	}
	public void setPlotNo(int plotNo) {
		this.plotNo = plotNo;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "projects [id=" + id + ", proName=" + proName + ", proImg=" + proImg + ", plotNo=" + plotNo + ", msg="
				+ msg + "]";
	}
	public projects(int id, String proName, String proImg, int plotNo, String msg) {
		super();
		this.id = id;
		this.proName = proName;
		this.proImg = proImg;
		this.plotNo = plotNo;
		this.msg = msg;
	}
	public projects() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	
}
