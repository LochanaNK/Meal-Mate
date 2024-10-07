<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="sidenav.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meal-Mate</title>
<link rel="stylesheet" type="text/css" href="css/dashboard.css">
</head>
<body>
	<div class="dash">
		<div class="dash-menu">
			<p class="dash-text">Manage Users</p>
			<a href="manage-users.jsp">
				<img class="dash-icons" src="assets/profile.png">
			</a>
		</div>
		<div class="dash-menu">
			<p class="dash-text">Manage Restaurants</p>
			<a href="manage-restaurants.jsp">
				<img class="dash-icons" src="assets/spoon-and-fork.png">
			</a>
		</div>
		<div class="dash-menu">
			<p class="dash-text">Manage Notifications</p>
			<a href="manage-notifications.jsp">
				<img class="dash-icons" src="assets/notification.png">
			</a>
		</div>
		<div class="dash-menu">
			<p class="dash-text">Customer Feedback</p>
			<a href="customer-feedback.jsp">
				<img class="dash-icons" src="assets/chat.png">
			</a>
		</div>
		<div class="dash-menu">
			<p class="dash-text">Income Report</p>
			<a href="income-report.jsp">
				<img class="dash-icons" src="assets/report.png">
			</a>
		</div>
	</div>
</body>
</html>