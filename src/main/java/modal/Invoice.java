package modal;

import java.sql.Timestamp;

public class Invoice {
	private String vID;
	private String username;
	private String address;
	private Timestamp ngaymua;
	private String product_name;
	private int quantity;
	private double sumMoney;
	
	public Invoice() {
		super();
	}

	public Invoice(String vID, String username, String address, Timestamp ngaymua) {
		super();
		this.vID = vID;
		this.username = username;
		this.address = address;
		this.ngaymua = ngaymua;
	}



	public Invoice(String vID, String username, String address, Timestamp ngaymua, String product_name, int quantity,
			double sumMoney) {
		super();
		this.vID = vID;
		this.username = username;
		this.address = address;
		this.ngaymua = ngaymua;
		this.product_name = product_name;
		this.quantity = quantity;
		this.sumMoney = sumMoney;
	}

	public String getvID() {
		return vID;
	}

	public void setvID(String vID) {
		this.vID = vID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Timestamp getNgaymua() {
		return ngaymua;
	}

	public void setNgaymua(Timestamp ngaymua) {
		this.ngaymua = ngaymua;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getSumMoney() {
		return sumMoney;
	}

	public void setSumMoney(double sumMoney) {
		this.sumMoney = sumMoney;
	}

	@Override
	public String toString() {
		return "Invoice [vID=" + vID + ", username=" + username + ", address=" + address + ", ngaymua=" + ngaymua
				+ ", product_name=" + product_name + ", quantity=" + quantity + ", sumMoney=" + sumMoney + "]";
	}

	
}
