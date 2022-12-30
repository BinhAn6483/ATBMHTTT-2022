package modal;

public class Order_Detail {
	private int o_d_ID;
	private Order oID;
	private Product pID;
	private int quantity;
	private double price;
	
	public Order_Detail() {
		super();
	}

	public Order_Detail(Order oID, Product pID, int quantity, double price) {
		super();
		this.oID = oID;
		this.pID = pID;
		this.quantity = quantity;
		this.price = price;
	}

	public int getO_d_ID() {
		return o_d_ID;
	}

	public void setO_d_ID(int o_d_ID) {
		this.o_d_ID = o_d_ID;
	}

	public Order getoID() {
		return oID;
	}

	public void setoID(Order oID) {
		this.oID = oID;
	}

	public Product getpID() {
		return pID;
	}

	public void setpID(Product pID) {
		this.pID = pID;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Order_Detail [o_d_ID=" + o_d_ID + ", oID=" + oID + ", pID=" + pID + ", quantity=" + quantity
				+ ", price=" + price + "]";
	}
	
	
	
}
