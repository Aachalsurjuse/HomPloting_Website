package com.Pojo;

public class AddMoreInfo 
{
	private int SN;
    private String slidebarMsg;
    private String projects;
    private String whyChooseUs;
    private int completedProjects;
    private int happyFamily;
    private int yearsOfExperience;
    private String email;
    private String mobNo;
    private String aboutSectionLogo;
	public int getSN() {
		return SN;
	}
	public void setId(int SN) {
		this.SN = SN;
	}
	public String getSlidebarMsg() {
		return slidebarMsg;
	}
	public void setSlidebarMsg(String slidebarMsg) {
		this.slidebarMsg = slidebarMsg;
	}
	public String getProjects() {
		return projects;
	}
	public void setProjects(String projects) {
		this.projects = projects;
	}
	public String getWhyChooseUs() {
		return whyChooseUs;
	}
	public void setWhyChooseUs(String whyChooseUs) {
		this.whyChooseUs = whyChooseUs;
	}
	public int getCompletedProjects() {
		return completedProjects;
	}
	public void setCompletedProjects(int completedProjects) {
		this.completedProjects = completedProjects;
	}
	public int getHappyFamily() {
		return happyFamily;
	}
	public void setHappyFamily(int happyFamily) {
		this.happyFamily = happyFamily;
	}
	public int getYearsOfExperience() {
		return yearsOfExperience;
	}
	public void setYearsOfExperience(int yearsOfExperience) {
		this.yearsOfExperience = yearsOfExperience;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getAboutSectionLogo() {
		return aboutSectionLogo;
	}
	public void setAboutSectionLogo(String aboutSectionLogo) {
		this.aboutSectionLogo = aboutSectionLogo;
	}
	public AddMoreInfo(int SN, String slidebarMsg, String projects, String whyChooseUs, int completedProjects,
			int happyFamily, int yearsOfExperience, String email, String mobNo, String aboutSectionLogo) {
		super();
		this.SN = SN;
		this.slidebarMsg = slidebarMsg;
		this.projects = projects;
		this.whyChooseUs = whyChooseUs;
		this.completedProjects = completedProjects;
		this.happyFamily = happyFamily;
		this.yearsOfExperience = yearsOfExperience;
		this.email = email;
		this.mobNo = mobNo;
		this.aboutSectionLogo = aboutSectionLogo;
	}
	public AddMoreInfo() {
		// TODO Auto-generated constructor stub
	}
    
    
}
