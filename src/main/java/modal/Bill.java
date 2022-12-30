package modal;

import java.sql.Date;

public class Bill extends Product {
	private String bId;
	private int uID;
	private Date exportDate;
	private int year;
	private double billPrice;
	private int quantity;
	
	public Bill() {
		super();
	}

	public Bill(String bId, int uID, Date exportDate, double billPrice) {
		super();
		this.bId = bId;
		this.uID = uID;
		this.exportDate = exportDate;
		this.billPrice = billPrice;
	}

	public Bill(int year, double billPrice) {
		super();
		this.year = year;
		this.billPrice = billPrice;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public int getuID() {
		return uID;
	}

	public void setuID(int uID) {
		this.uID = uID;
	}

	public Date getExportDate() {
		return exportDate;
	}

	public void setExportDate(Date exportDate) {
		this.exportDate = exportDate;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getBillPrice() {
		return billPrice;
	}

	public void setBillPrice(double billPrice) {
		this.billPrice = billPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Bill [year=" + year + ", billPrice=" + billPrice + "]";
	}
	
	
}
