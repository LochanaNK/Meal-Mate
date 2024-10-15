<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/manage-restaurants.css">
</head>
<body>
	<div class="add">
		<p>Add Restaurant</p>
		<form class="forms" method="post" action="RestaurantController">
		<input type="hidden" name="action" value="addRestaurant">
			<label name="name">Name</label>
			<input type="text" name="name">
			<label name="email">Email</label>
			<input type="email" name="email">
			<label name="contact">Contact</label>
			<input type="tel" name="contact" pattern="[0-9]{3}[0-9]{4}[0-9]{3}">
	
			<input type="submit" value="submit">
		</form>
	</div>
	<div class="remove">
		<p>Remove Restaurant</p>
		<form class="forms" method="post" action="RestaurantController">
			<input type="hidden" name="action" value="removeRestaurant">
			<label name="name">Name</label>
			<input type="text" name="name">
		
			<input type="submit" value="submit">
		</form>
	</div>
</body>
</html> --%>