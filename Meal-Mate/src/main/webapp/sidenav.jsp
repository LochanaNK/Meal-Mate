<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/sidenav.css">
</head>


<body>
	<div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
            </svg>
     </div>
     
     <div id="main-wrapper">

            <div class="header">
                <nav class="navbar top-navbar navbar-expand-md navbar-light">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="dashboard.jsp">

                            <span><img src="images/icn.png" alt="homepage" class="dark-logo" /></span>
                        </a>
                    </div>
                    <div class="navbar-collapse">

                        <ul class="navbar-nav mr-auto mt-md-0">

                        </ul>

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
                            <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">Restaurants</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="all-restaurant.jsp">All Restaurant</a></li>

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
</body>
</html>