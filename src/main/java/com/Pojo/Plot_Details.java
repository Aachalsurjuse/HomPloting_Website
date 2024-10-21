package com.Pojo;

public class Plot_Details 
{
	int SN;
	String Buyer_Name;
	String Available_status;
	String Payment_status;
	int Paid_Amount;
	int Plot_Prize;
	String Plot_Size;
	String Direction;
	String Date;
	public int getSN() 
	{
		return SN;
	}
	public void setSN(int sN) {
		SN = sN;
	}
	public String getBuyer_Name() {
		return Buyer_Name;
	}
	public void setBuyer_Name(String buyer_Name) {
		Buyer_Name = buyer_Name;
	}
	public String getAvailable_status() {
		return Available_status;
	}
	public void setAvailable_status(String available_status) {
		Available_status = available_status;
	}
	public String getPayment_status() {
		return Payment_status;
	}
	public void setPayment_status(String payment_status) {
		Payment_status = payment_status;
	}
	public int getPaid_Amount() {
		return Paid_Amount;
	}
	public void setPaid_Amount(int paid_Amount) {
		Paid_Amount = paid_Amount;
	}
	public int getPlot_Prize() {
		return Plot_Prize;
	}
	public void setPlot_Prize(int plot_Prize) {
		Plot_Prize = plot_Prize;
	}
	public String getPlot_Size() 
	{
		return Plot_Size;
	}
	public void setPlot_Size(String plot_Size) {
		Plot_Size = plot_Size;
	}
	public String getDirection() {
		return Direction;
	}
	public void setDirection(String direction) {
		Direction = direction;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public Plot_Details(int sN, String buyer_Name, String available_status, String payment_status, int paid_Amount,
			int plot_Prize, String plot_Size, String direction, String date) {
		super();
		SN = sN;
		Buyer_Name = buyer_Name;
		Available_status = available_status;
		Payment_status = payment_status;
		Paid_Amount = paid_Amount;
		Plot_Prize = plot_Prize;
		Plot_Size = plot_Size;
		Direction = direction;
		Date = date;
	}
	public Plot_Details() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Plot_Details [SN=" + SN + ", Buyer_Name=" + Buyer_Name + ", Available_status=" + Available_status
				+ ", Payment_status=" + Payment_status + ", Paid_Amount=" + Paid_Amount + ", Plot_Prize=" + Plot_Prize
				+ ", Plot_Size=" + Plot_Size + ", Direction=" + Direction + ", Date=" + Date + "]";
	}
	 
	
	
	
}
