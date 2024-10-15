<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException, java.util.HashMap, java.util.Map" %>
<%@ page import="dbConnection.DBconnection, jakarta.servlet.http.HttpSession" %>
<%@ page import="services.OrderServiceController" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Orders</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/deliver/css/staffdashboard.css">
</head>
<body>

<div class="wrapper">
    <!-- Side Navigation -->
    <div class="sidebar">
        <a href="dashboard.jsp">Dashboard</a>
        <div class="submenu">
            <a href="#all-orders">All Orders</a>
            
        </div>
        
        <a href="${pageContext.request.contextPath}/deliverySignOutController">Sign Out</a>
    </div>

    <!-- Main Dashboard Content -->
    <div class="main-content">
        <!-- All Orders Table Section -->
        <% String thisEmail = (String) request.getSession().getAttribute("semail"); %>
        <h2 id="all-orders">All Orders &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<%= thisEmail %></h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Order ID</th>
                        <th>User Email</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Title</th>
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th>Ordered Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    try {
                    		            HashMap<String, HashMap<String, String>> orders = OrderServiceController.showAllOrders();
                    		
                    		            if (orders.isEmpty()) {
                    		                out.println("<tr><td colspan='6' style='color:blue;'>No orders found.</td></tr>");
                    		            } 
                    		            else {
                    		            	
                    		                for (Map.Entry<String, HashMap<String, String>> entry : orders.entrySet()) {
                    		                    HashMap<String, String> orderDetails = entry.getValue();
                    		                    String oid = entry.getKey();
                    		
                    		                    String email = orderDetails.get("uemail") != null ? orderDetails.get("uemail") : "N/A";
                    		                    String address = orderDetails.get("address") != null ? orderDetails.get("address") : "N/A";
                    		                    String phone = orderDetails.get("phone") != null ? orderDetails.get("phone") : "N/A";
                    		                    String title = orderDetails.get("title") != null ? orderDetails.get("title") : "N/A";
                    		                    String qty = orderDetails.get("qty") != null ? orderDetails.get("qty") : "N/A";
                    		                    String price = orderDetails.get("price") != null ? orderDetails.get("price") : "N/A";
                    		                    String status = orderDetails.get("status") != null ? orderDetails.get("status") : "N/A";
                    		                    String date = orderDetails.get("date") != null ? orderDetails.get("date") : "N/A";
                    %>
                    				<tr>
				                        <td data-column="Id" style="text-align:center"><%= oid %></td>
				                        <td data-column="Email" style="text-align:center"><%= email %></td>
				                        <td data-column="Address" style="text-align:center"><%= address %></td>
				                        <td data-column="Phone" style="text-align:center"><%= phone %></td>
				                        <td data-column="Title" style="text-align:center"><%= title %></td>
				                        <td data-column="Quantity" style="text-align:center"><%= qty %></td>
				                        <td data-column="Price" style="text-align:center">$<%= price %></td>
				                        <td data-column="Status"  style="text-align:center"><%= status %></td>
				                        <td data-column="Date"  style="text-align:center"><%= date %></td>
				                        
			                        <% 
									    if (status.equals("Processing")) { 
									%>
									    <td data-column="Action" style="display:flex; align-items:center; justify-content:center">
									        <a href="${pageContext.request.contextPath}/addToListServletController?email=<%= email %>" 
											   onclick="return confirm('Are you sure you want to get this order?');" 
											   class="btn btn-success btn-flat btn-addon btn-xs m-b-10">
											   Get 💰
											</a>

									    </td>
									<% 
									    } 
									    else if (status.equals("Dispatch")) { 
									%>
									    <td data-column="Action" style="display:flex; align-items:center; justify-content:center">
									        <a href="" 
									           onclick="return confirm('This order is already taken');" 
									           class="btn btn-danger btn-flat btn-addon btn-xs m-b-10" style="cursor:not-allowed;">
									           Taken 🚛
									        </a>
									    </td>
									<% 
									    } 
									    else if (status.equals("Delivered")) {
									%>
										<td data-column="Action" style="display:flex; align-items:center; justify-content:center">
									        <a href="" 
									           onclick="return confirm('This order is already taken');" 
									           class="btn btn-primary btn-flat btn-addon btn-xs m-b-10" style="cursor:not-allowed;">
									           Delivered 🍕
									        </a>
									    </td>
								    <% 
									    }
									%>
									</tr>

				                    
                    <%
                    
				                }
				            }
	                   }
                       catch (SQLException e) {
                    	   System.out.println("Rendering awlak " + e);
                       }
                    
                    
                    
                    %>
                    
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap and JavaScript libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
