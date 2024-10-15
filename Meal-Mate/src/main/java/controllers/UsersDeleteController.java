package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.RestaurantsQueries;

import java.io.IOException;
import java.sql.SQLException;

public class UsersDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u_id=request.getParameter("u_del");
		
		try {
			if(RestaurantsQueries.removeRestaurant(u_id)) {
				RequestDispatcher dis=request.getRequestDispatcher("all-users.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}


}
