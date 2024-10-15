package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Restaurants;
import services.RestaurantsQueries;

import java.io.IOException;
import java.sql.SQLException;


public class RestaurantUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				String r_id=request.getParameter("res_upd");
				
				int a_id = Integer.parseInt(request.getParameter("a_id"));
		        String resName = request.getParameter("res_name");
		        String email = request.getParameter("email");
		        String phone = request.getParameter("phone");
		        String address = request.getParameter("address");
				String image = request.getParameter("image");
				Restaurants newRestaurant=new Restaurants(resName,email,phone,address,image,a_id);

				try {
					RestaurantsQueries.updateRestaurant(newRestaurant,r_id);
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println(e);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
					System.out.println(e);
				}
				response.sendRedirect("all-restaurant.jsp");
			}

	}


