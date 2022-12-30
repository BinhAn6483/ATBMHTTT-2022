<%@page import="java.util.ArrayList"%>
<%@page import="modal.Order"%>
<%@page import="java.util.List"%>
<%@page import="dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	<link type="text/css" rel="stylesheet" href="css/slick.css"/>
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link type="text/css" rel="stylesheet" href="css/style.css"/>
    <title>List Invoice</title>
    <style>
        #main {
            margin: 50px;
        }

        h1 {
            font-size: 30px;
            font-weight: 500;
            margin-bottom: 20px;
        }
        table, tr, th, td {
            border: 1px solid #000;
        }
        table {
            width: 600px;
        }
        th {
            padding: 10px;
        }
        td {
            padding: 4px 0 4px 10px;
        }
        td a {
            background-color: red;
            color: #fff;
            border: none;
            outline: none;
            padding: 2px 4px;
        }
    </style>
</head>
<body>

<%
	Dao dao = new Dao();
	List<Order> orders = dao.getListInvoice();
%>
    
    <div id="main">
        <h1>List Invoice</h1>
        <div class="list-invoice">
            <table>
                <tr>
                    <th>Mã hóa đơn</th>
                    <th>Ngày mua</th>
                    <th>Tình trạng</th>
                    <th></th>
                </tr>
                <%
					for(Order o : orders) {
				%>
                	<tr>
                    	<td><%=o.getoID()%></td>
                    	<td><%=o.getDate_order()%></td>
                    	<td><%=o.getStatus_order()%></td>
                    	<td style="text-align: center;">
                        	<a href="InvoiceServlet?oID=<%=o.getoID()%>" style="text-decoration: none">Detail</button> 
                    	</td>
                	</tr>
                	<%
						}
                	%>
            </table>
        </div>
    </div>

</body>
</html>