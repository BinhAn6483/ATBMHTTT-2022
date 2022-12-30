package modal;

import java.sql.Timestamp;

public class Order {
	private String oID;
	private Users uID;
	private String o_address;
	private Timestamp date_order;
	private int status_order;
	
	public Order() {
		super();
	}

	public Order(String oID, Timestamp date_order, int status_order) {
		super();
		this.oID = oID;
		this.date_order = date_order;
		this.status_order = status_order;
	}

	public Order(String oID, Users uID, String o_address, Timestamp date_order, int status_order) {
		super();
		this.oID = oID;
		this.uID = uID;
		this.o_address = o_address;
		this.date_order = date_order;
		this.status_order = status_order;
	}

	public String getoID() {
		return oID;
	}

	public void setoID(String oID) {
		this.oID = oID;
	}

	public Users getuID() {
		return uID;
	}

	public void setuID(Users uID) {
		this.uID = uID;
	}

	public String getO_address() {
		return o_address;
	}

	public void setO_address(String o_address) {
		this.o_address = o_address;
	}

	public Timestamp getDate_order() {
		return date_order;
	}

	public void setDate_order(Timestamp date_order) {
		this.date_order = date_order;
	}

	public int getStatus_order() {
		return status_order;
	}

	public void setStatus_order(int status_order) {
		this.status_order = status_order;
	}

	@Override
	public String toString() {
		return "Order [oID=" + oID + ", uID=" + uID + ", o_address=" + o_address + ", date_order=" + date_order
				+ ", status_order=" + status_order + "]";
	}

}
