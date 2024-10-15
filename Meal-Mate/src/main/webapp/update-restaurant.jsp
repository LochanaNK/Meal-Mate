<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.*,java.util.*" %>
<%@ page import="dbConnection.DBconnection,services.RestaurantsQueries" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
	<title>Update Restaurant</title>
	<link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link href="css/helper.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<title>Insert title here</title>
</head>
<body>
		<body class="fix-header">
                    <div class="preloader">
                        <svg class="circular" viewBox="25 25 50 50">
                            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
                        </svg>
                    </div>
                    <div id="main-wrapper">

                        <div class="header">
                            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="dashboard.php">

                                        <span><img src="images/icn.png" alt="homepage" class="dark-logo" /></span>
                                    </a>
                                </div>
                                <div class="navbar-collapse">

                                    <ul class="navbar-nav mr-auto mt-md-0">

                                        <li class="nav-item dropdown mega-dropdown"> <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-th-large"></i></a>
                                            <div class="dropdown-menu animated zoomIn">
                                                <ul class="mega-dropdown-menu row">

                                                    <li class="col-lg-3  m-b-30">
                                                        <h4 class="m-b-20">CONTACT US</h4>

                                                        <form>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="email" class="form-control" placeholder="Enter email">
                                                            </div>
                                                            <div class="form-group">
                                                                <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                                            </div>
                                                            <button type="submit" class="btn btn-info">Submit</button>
                                                        </form>
                                                    </li>
                                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                                        <h4 class="m-b-20">List style</h4>

                                                        <ul class="list-style-none">
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                                        <h4 class="m-b-20">List style</h4>

                                                        <ul class="list-style-none">
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="col-lg-3 col-xlg-3 m-b-30">
                                                        <h4 class="m-b-20">List style</h4>

                                                        <ul class="list-style-none">
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> This Is Another Link</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                    </ul>


                                    <ul class="navbar-nav my-lg-0">
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/bookingSystem/user0-icn.png" alt="user" class="profile-pic" /></a>
                                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                                <ul class="dropdown-user">
                                                    <li><a href="logout.php"><i class="fa fa-power-off"></i> Logout</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>


            		<div class="left-sidebar">

                            <div class="scroll-sidebar">

                                <nav class="sidebar-nav">
                                    <ul id="sidebarnav">
                                        <li class="nav-devider"></li>
                                        <li class="nav-label">Home</li>
                                        <li> <a href="dashboard.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
                                        <li class="nav-label">Log</li>
                                        <li> <a href="all-users.jsp"> <span><i class="fa fa-user f-s-20 "></i></span><span>Users</span></a></li>
                                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">Restaurant</span></a>
                                            <ul aria-expanded="false" class="collapse">
                                                <li><a href="all-restaurant.jsp">All Restaurants</a></li>

                                                <li><a href="add-restaurant.jsp">Add Restaurant</a></li>

                                            </ul>
                                        </li>
                                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-cutlery" aria-hidden="true"></i><span class="hide-menu">Menu</span></a>
                                            <ul aria-expanded="false" class="collapse">
                                                <li><a href="all-menu.jsp">All Menues</a></li>
                                                <li><a href="add-menu.jsp">Add Menu</a></li>


                                            </ul>
                                        </li>
                                        <li> <a href="all-orders.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span>Orders</span></a></li>

                                    </ul>
                                </nav>

                            </div>

                        </div>


						<div class="col-lg-12" >
                                    <div class="card card-outline-primary" >

                                        <h4 class="m-b-0 "style="margin:auto">Update Restaurant</h4>
										<% String r_id=request.getParameter("res_upd"); %>
                                        <div class="card-body" style="margin:auto">
                                        	<form action="RestaurantUpdateController" method="get" enctype="multipart/form-data">
                                        		<input type="hidden" value="<%=r_id %>" name="res_upd">
											    <div class="form-body">
											        <%
											            Connection con = null;
											            PreparedStatement ps = null;
											            ResultSet res = null;
											            try {
											                con = DBconnection.getConnection();
											                String sql = "SELECT * FROM restaurant WHERE rs_id=?";
											                ps = con.prepareStatement(sql);
											                ps.setInt(1, Integer.parseInt(request.getParameter("res_upd")));
											                res = ps.executeQuery();
											                if (res.next()) { 
											        %>
											        <hr>
											        <div class="row p-t-20">
											            <div class="col-md-6">
											                <div class="form-group">
											                    <label class="control-label">Restaurant Name</label>
											                    <input type="text" name="res_name" value="<%= res.getString("title") %>" class="form-control" >
											                </div>
											            </div>
											
											            <div class="col-md-6">
											                <div class="form-group has-danger">
											                    <label class="control-label">Business E-mail</label>
											                    <input type="text" name="email" value="<%= res.getString("email") %>" class="form-control form-control-danger" >
											                </div>
											            </div>
											        </div>
											
											        <div class="row p-t-20">
											            <div class="col-md-6">
											                <div class="form-group">
											                    <label class="control-label">Phone</label>
											                    <input type="text" name="phone" class="form-control" value="<%= res.getString("phone") %>" >
											                </div>
											            </div>
											        </div>
											
											        <div class="col-md-6">
											            <div class="form-group has-danger">
											                <label class="control-label">Image</label>
											                <input type="text" name="image" id="lastName" value="<%= res.getString("image") %>" class="form-control form-control-danger" placeholder="12n">
											            </div>
											        </div>
											
											        <h3 class="box-title m-t-40">Restaurant Address</h3>
											        <hr>
											
											        <div class="row">
											            <div class="col-md-12">
											                <div class="form-group">
											                    <textarea name="address"  style="height:100px;" class="form-control"><%= res.getString("address") %></textarea>
											                </div>
											            </div>
											        </div>
											
											        <% 
											                } 
											            } catch (Exception e) {
											                e.printStackTrace();
											            } finally {
											                if (res != null) try { res.close(); } catch (SQLException e) { e.printStackTrace(); }
											                if (ps != null) try { ps.close(); } catch (SQLException e) { e.printStackTrace(); }
											                if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
											            }
											        %>
											    </div>
											    <div class="form-actions">
											        <input type="submit" name="submit" class="btn btn-primary" value="Save">
											        <a href="all-restaurant.jsp" class="btn btn-inverse">Cancel</a>
											    </div>
										</form>
                                        	
							          </div>
                                </div>
                            </div>
                                        
		<%@ include file="include/footer.jsp" %>
          <script src="js/lib/jquery/jquery.min.js"></script>
          <script src="js/lib/bootstrap/js/popper.min.js"></script>
          <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
          <script src="js/jquery.slimscroll.js"></script>
          <script src="js/sidebarmenu.js"></script>
          <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
          <script src="js/custom.min.js"></script>
</body>
</html>