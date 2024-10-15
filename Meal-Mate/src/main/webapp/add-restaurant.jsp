<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dbConnection.DBconnection" %>


<!DOCTYPE html>
<html lang="en">
<head>

     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="description" content="">
     <meta name="author" content="">
    	<link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
     <title>Add Restaurant</title>
     <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
     <link href="css/helper.css" rel="stylesheet">
     <link href="css/style.css" rel="stylesheet">
     <link href="css/animate.css" rel="stylesheet">
     <link href="css/helper.css" rel="stylesheet">
     <link href="css/spinners.css" rel="stylesheet">
            
</head>

<body class="fix-header">

                  

                    <div id="main-wrapper">

                        <div class="header">
                            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="dashboard.jsp">

                                        <span><img src="images/icn.png" alt="homepage" class="dark-logo" /></span>
                                    </a>
                                </div>
                                <div class="navbar-collapse">

                                    <ul class="navbar-nav my-lg-0">

                                        <li class="nav-item dropdown">

                                            <div class="dropdown-menu dropdown-menu-right mailbox animated zoomIn">
                                                <ul>
                                                    <li>
                                                        <div class="drop-title">Notifications</div>
                                                    </li>

                                                    <li>
                                                        <a class="nav-link text-center" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/bookingSystem/user0-icn.png" alt="user" class="profile-pic" /></a>
                                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                                <ul class="dropdown-user">
                                                    <li><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout</a></li>
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

                        <div class="page-wrapper">
                           

                           


						    <div class="container">
						        <div class="col-lg-12">
						            <div class="card card-outline-primary">
						                <div class="card-header">
						                    <h4 class="m-b-0 text-white">Add Restaurant</h4>
						                </div>
						                <div class="card-body">
						                    <form action="RestaurantController" method="post" >
						                        <div class="form-body">
						                            <hr>
						                            <div class="row p-t-20">
						                                <div class="col-md-6">
						                                    <div class="form-group">
						                                        <label class="control-label">Restaurant Name</label>
						                                        <input type="text" name="res_name" class="form-control" required>
						                                    </div>
						                                </div>
						                                <div class="col-md-6">
						                                    <div class="form-group">
						                                        <label class="control-label">Restaurant Admin ID</label>
						                                        <input type="text" name="a_id" class="form-control" required>
						                                    </div>
						                                </div>
						                                <div class="col-md-6">
						                                    <div class="form-group has-danger">
						                                        <label class="control-label">Business E-mail</label>
						                                        <input type="text" name="email" class="form-control form-control-danger" required>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="row p-t-20">
						                                <div class="col-md-6">
						                                    <div class="form-group">
						                                        <label class="control-label">Phone</label>
						                                        <input type="text" name="phone" class="form-control" required>
						                                    </div>
						                                </div>
						                          
						                                <div class="col-md-6">
						                                    <div class="form-group has-danger">
						                                        <label class="control-label">Image</label>
						                                        <input type="text" name="image" class="form-control form-control-danger" required>
						                                    </div>
						                                </div>
						                               
						                            </div>
						                            <h3 class="box-title m-t-40">Restaurant Address</h3>
						                            <hr>
						                            <div class="row">
						                                <div class="col-md-12">
						                                    <div class="form-group">
						                                        <textarea name="address" style="height:100px;" class="form-control" required></textarea>
						                                    </div>
						                                </div>
						                            </div>
						                        </div>
						                        <div class="form-actions">
						                            <input type="submit" name="submit" class="btn btn-primary" value="Save">
						                            <a href="add-restaurant.jsp" class="btn btn-inverse">Cancel</a>
						                        </div>
						                      
						                    </form>
						                </div>
						            </div>
						        </div>
					     </div>

        <%@ include file="include/footer.jsp" %>
 </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>

</body>
</html>



