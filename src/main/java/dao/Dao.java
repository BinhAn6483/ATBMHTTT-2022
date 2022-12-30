package dao;

import java.sql.Connection;   
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.ConnectDB;
import modal.Bill;
import modal.Cart;
import modal.Category;
import modal.Detail;
import modal.Invoice;
import modal.Order;
import modal.Order_Detail;
import modal.Product;
import modal.Users;

public class Dao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<Product> getProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products";
		
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(5),
						rs.getString(6),
						rs.getString(7))); 
			}
		} catch (Exception e) {
		}
		
		return list;
	}
	
	// add to cart
	public Product getProductById(int id) {
		Product p = new Product();
		String query = "select * from products where pId = ?";
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				p = new Product(rs.getInt(1), 
						rs.getString(2), 
						rs.getDouble(5), 
						rs.getString(6), 
						rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
	
	// detail
	public Detail getDetailProductById(int id) {
		Detail d = new Detail();
		String query = "select detail.pID, [name], price, [image], [description], slide1, slide2, slide3 \r\n"
				+ "from products, detail\r\n"
				+ "where products.pID = detail.pID and detail.pID = ?";
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				d = new Detail(rs.getInt(1), rs.getString(2), 
								rs.getDouble(3), 
								rs.getString(4), 
								rs.getString(5), 
								rs.getString(6), 
								rs.getString(7), 
								rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	
	// Thá»‘ng kÃª biá»ƒu Ä‘á»“ cá»™t doanh thu cá»§a cá»­a hÃ ng theo tuá»³ chá»�n thá»�i gian
	public List<Bill> getSumMoney() {
		List<Bill> list = new ArrayList<Bill>();
 		String query = "select (YEAR(ngayban)) as NÄƒm, sum(bill.tongtien) as tongtien from bill group by (YEAR(ngayban))";
		
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Bill(rs.getInt(1), rs.getDouble(2)));
			} 
		} catch (Exception e) {

		}
		return list;
	}
	
	// Thá»‘ng kÃª biá»ƒu Ä‘á»“ trÃ²n doanh thu cá»§a cá»­a hÃ ng trong má»™t thÃ¡ng theo loáº¡i danh má»¥c hÃ ng hoÃ¡  
	public List<Category> getSumMoneyCate() {
		List<Category> list = new ArrayList<Category>();
 		String query = "select category.type_name, sum(bill.tongtien) as tongtien \r\n"
 				+ "from bill, category \r\n"
 				+ "where bill.type_id = category.type_id  and (MONTH(ngayban)) = 12 \r\n"
 				+ "group by category.type_name";
		
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Category(rs.getString(1), rs.getInt(2)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	
	// login
	public Users loginUser(String username, String password) {
		String query = "select * from [users] where username = ? and password = ?";
		Users users = new Users();
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while(rs.next()) {
				users = new Users(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(9), rs.getInt(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}
	
	// update user
	public void updateUser(Users u) {
		String query = "\r\n"
				+ "update users set username=N'?', password=N'?', ngaysinh='?', gioitinh=N'?', email=N'?', soDT='?', diachi=N'?' where username=N'?'";
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, u.getUserName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getDay_birth());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getEmail());
			ps.setString(6, u.getPhoneNumber());
			ps.setString(7, u.getAddress());
			ps.setString(8, u.getUserName());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getTypeIDFromIDProduct(int pID){
        int typeID =0;
        String query = "select * from products where pId = ?";
        try {
            conn = new ConnectDB().getConnect();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pID);
            rs = ps.executeQuery();
            while (rs.next()) {
                typeID = rs.getInt(4);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return typeID;
    }
	
	// insert order
	public void checkoutOrder(Order order) {
		String sql = "insert into orders values \r\n"
				+ "(?, ?, ?, ?, ?)";
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, order.getoID());
			ps.setInt(2, order.getuID().getId()); 
			ps.setString(3, order.getO_address());
			ps.setTimestamp(4, order.getDate_order());; 
			ps.setInt(5, order.getStatus_order()); 
			ps.executeUpdate(); 
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// insert order detail
	public boolean order_detail(Order_Detail o_detail) {
		String sql = "insert into orders_detail values \r\n"
				+ "(?, ?, ?, ?)";
		boolean result = false;
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, o_detail.getoID().getoID()); 
			ps.setInt(2, o_detail.getpID().getId());
			ps.setInt(3, o_detail.getQuantity()); 
			ps.setDouble(4, o_detail.getPrice()); 
			ps.executeUpdate();
			result = true;
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	// get orders detail
	public List<Invoice> getInvoice(String oID) {
		List<Invoice> list = new ArrayList<Invoice>();
		
		String sql = "select orders.oID, users.username, o_address, ngaymua, products.name, quantity, tongtien\r\n"
				+ "from orders, orders_detail, users, products\r\n"
				+ "where orders.oID = orders_detail.oID and orders.uID = users.uID and \r\n"
				+ "orders_detail.pID = products.pID and orders.oID = ?";
		
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, oID);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Invoice(rs.getString(1), 
									rs.getString(2), 
									rs.getString(3), 
									rs.getTimestamp(4), 
									rs.getString(5),
									rs.getInt(6),
									rs.getDouble(7)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	//get list invoice 
	public List<Order> getListInvoice() {
		List<Order> list = new ArrayList<Order>();
		String sql = "select * from orders";
		
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Order(rs.getString(1), rs.getTimestamp(4), rs.getInt(5)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// get orders
	public Invoice getInvoiceOrder(String oID) {
		String sql = "select oID, users.username, o_address, ngaymua from orders, users \r\n"
				+ "where orders.uID = users.uID and orders.oID = ?";
		Invoice inv = new Invoice();
		try {
			conn = new ConnectDB().getConnect();
			ps = conn.prepareStatement(sql);
			ps.setString(1, oID);
			rs = ps.executeQuery();
			while(rs.next()) { 
				inv = new Invoice(rs.getString(1), rs.getString(2), rs.getString(3), rs.getTimestamp(4)) ;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return inv;
	}
	
	public static void main(String[] args) {
		Dao dao = new Dao();
		List<Order> list = dao.getListInvoice();
		Detail p = dao.getDetailProductById(1);
//		System.out.println(p);
		for(Order l : list) {
			System.out.println(l);
		}
	}
}
