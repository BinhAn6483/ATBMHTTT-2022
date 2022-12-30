package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import modal.Order;

@WebServlet("/ListInvoice")
public class ListInvoice extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListInvoice() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Dao dao = new Dao();
		List<Order> listI = dao.getListInvoice();
		
		request.setAttribute("listI", listI);
		request.getRequestDispatcher("listInvoice.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
