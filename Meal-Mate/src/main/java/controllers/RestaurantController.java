package controllers;

import jakarta.servlet.ServletException;
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
		
			int a_id = Integer.parseInt(request.getParameter("a_id"));
	        String resName = request.getParameter("res_name");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String address = request.getParameter("address");
			String image=request.getParameter("image");
			Restaurants newRestaurant=new Restaurants(resName,email,phone,address,image,a_id);
			try {
				RestaurantsQueries.addRestaurant(newRestaurant);
			} catch (SQLException e) {
				System.out.println(e);
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				System.out.println(e);
				e.printStackTrace();
			}
			response.sendRedirect("all-restaurant.jsp"); 
		
	}

}
