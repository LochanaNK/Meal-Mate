package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.RestaurantsQueries;

import java.io.IOException;
import java.sql.SQLException;

public class RestaurantDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String r_id=request.getParameter("res_del");
		
		try {
			if(RestaurantsQueries.removeRestaurant(r_id)) {
				RequestDispatcher dis=request.getRequestDispatcher("all-restaurant.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}



}
