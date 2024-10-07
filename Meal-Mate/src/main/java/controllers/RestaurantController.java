package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Restaurants;

import java.io.IOException;
import java.sql.SQLException;

import services.RestaurantsQueries;

public class RestaurantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action =request.getParameter("action");
		
		if("addRestaurant".equals(action)) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String contact=request.getParameter("contact");
			Restaurants newRestaurant=new Restaurants(name,email,contact);
			RestaurantsQueries restaurant =new RestaurantsQueries();
			
			newRestaurant.setName(name);
			newRestaurant.setEmail(email);
			newRestaurant.setContact(contact);
			try {
				restaurant.addRestaurant(newRestaurant);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.sendRedirect("manage-restaurants.jsp"); 
		}
	}

}
