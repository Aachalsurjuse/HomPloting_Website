package com.Pojo;

public class ContactDetail
{
	int SN;
	String Fullname;
	String Mobno;
	String Email;
	String Address;
	String Message;
	public int getSN() {
		return SN;
	}
	public void setSN(int sN) {
		SN = sN;
	}
	public String getFullname() {
		return Fullname;
	}
	public void setFullname(String fullname) {
		Fullname = fullname;
	}
	public String getMobno() {
		return Mobno;
	}
	public void setMobno(String mobno) {
		Mobno = mobno;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	@Override
	public String toString() {
		return "ContactDetail [SN=" + SN + ", Fullname=" + Fullname + ", Mobno=" + Mobno + ", Email=" + Email
				+ ", Address=" + Address + ", Message=" + Message + "]";
	}
	public ContactDetail(int sN, String fullname, String mobno, String email, String address, String message) {
		super();
		SN = sN;
		Fullname = fullname;
		Mobno = mobno;
		Email = email;
		Address = address;
		Message = message;
	}
	public ContactDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
