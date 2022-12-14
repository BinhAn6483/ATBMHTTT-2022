
<%@page import="modal.Users"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="modal.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modal.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	Dao dao = new Dao();
	List<Product> product = dao.getProduct();
	ArrayList<Cart> cartList = new ArrayList<Cart>();
	
	HttpSession session1 = request.getSession();
	Users users = (Users) session1.getAttribute("username");
%>

<!-- HEADER -->
		<header id="main-header">
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +035-911-84-33</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
						<li>
							<% if(users != null && users.getUser_type() == 1){ %>
							<a href = "billservlet" >
										Charts </a >
							<%}%>
						</li>
						<li>
							<% if (users == null) { %>
								<a href="Login.jsp">Login</a>
							<%}else{%>
							<div class="myAccount">
								<a> <%=users.getUserName()%> 
									<i class="fa fa-angle-down"></i>
								</a>
								<div class="subAccountButton">
									<a class="remove" href="LogoutServlet" >
										<i class="fa fa-sign-out"></i>
										Logout
									</a>
								</div>
							</div>
							<% } %>
						</li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="header-logo">
								<a href="index.jsp" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">

								<!-- Cart -->
								<div class="dropdown" style="cursor: pointer;">
								<%
                        		  	NumberFormat nf = NumberFormat.getInstance();
                        		  	nf.setMinimumIntegerDigits(0);
                        			double total = 0;
                        			double amount = 0;
                        			double sum = 0;
                        			cartList = null; 
                        			if(session.getAttribute("cart") != null) {
                        				cartList = (ArrayList<Cart>) session.getAttribute("cart");
                        			}
                        		%>
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<%
											if(cartList != null) {
												for(Cart item : cartList) {
													amount = amount + item.getQuantity();
										%>
											<div class="qty"><%=nf.format(amount)%></div>
										<%
												}	
											}
										%>										
									</a>
									<div class="cart-dropdown" style="padding: 15px 15px 0 15px;min-height: 200px; display: flex; flex-direction: column; justify-content: space-between;">
										<div class="cart-list" style="overflow-y: unset; max-height: 1800px; margin-bottom: 0;">
                        		<% 
                        			if(cartList != null) {
                        				for(Cart c : cartList) {
                        					total = total + (c.getQuantity() 
                        							* dao.getProductById(c.getP().getId()).getPrice());
                        					sum = sum + c.getQuantity();
                        		%>
											<div class="product-widget">
												<div class="product-img">
													<img src=<%= dao.getProductById(c.getP().getId()).getImage() %> alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name">
														<a href="#" style="display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 2;"><%= dao.getProductById(c.getP().getId()).getName()%></a>
													</h3>
													<h4 class="product-price">
														<span class="qty"><%=c.getQuantity()%>x</span>
														$<%=nf.format(dao.getProductById(c.getP().getId()).getPrice())%>
													</h4>
												</div>
												<a href="cart?command=removeCartIndex&id=<%=c.getP().getId() %>" class="delete">
													<i class="fa fa-close"></i>
												</a>
											</div>
									<%
                        		}
                        			
									}
								%>
										</div>
										<div>
										<div class="cart-summary" style="cursor: text;">
											<small><%=nf.format(sum)%> Item(s) selected</small>
											<h5>SUBTOTAL: $<%=nf.format(total)%></h5>
										</div>
										<div class="cart-btns" style="">
											<a href="cart.jsp">View Cart</a>
											<a href="checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
										</div>
										
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<script>
			// Header
			var header = document.querySelector('#main-header');
			var scrollable = 192;
			
			window.onscroll = function() {
				myFunc()
			}
			
			function myFunc() {
				if(window.pageYOffset >= scrollable) {
					header.classList.add('scrollable')
				}else {
					header.classList.remove('scrollable')
				}
			}
		</script>
		<!-- /HEADER -->