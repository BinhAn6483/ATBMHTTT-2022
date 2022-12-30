package control;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import modal.Cart;
import modal.Order;
import modal.Order_Detail;
import modal.Product;
import modal.Users;

@WebServlet("/order-servlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String o_address = request.getParameter("o_address");
		
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("username");
		ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart");

		Dao dao = new Dao();
		double total = 0;

		try {
			Date date = new Date();
			String mhd = "" + date.getTime();
			Order order = new Order(mhd, users, o_address, new Timestamp(new Date().getTime()), 0);
			order.setoID(mhd); 
			dao.checkoutOrder(order);
			
			if (cartList != null && users != null) {
				for(Cart c : cartList) {
					Product sp = new Product();
					sp.setId(c.getP().getId()); 
					total = total + (c.getQuantity()
        					* dao.getProductById(c.getP().getId()).getPrice());
					dao.order_detail(new Order_Detail(order, sp, c.getQuantity(), total));
				}
				cartList.clear();
				response.sendRedirect("checkout.jsp");
			} else {
				if (users == null) {
					response.sendRedirect("Login.jsp");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
