package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Dishes;
import services.DishesQueries;

import java.io.IOException;
import java.sql.SQLException;

public class DishesAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rs_id = Integer.parseInt(request.getParameter("rs_id"));
        String dishName = request.getParameter("d_name");
        String slogan = request.getParameter("about");
        String price = request.getParameter("price");
		String image=request.getParameter("image");
		Dishes newDish=new Dishes(dishName,slogan,price,image,rs_id);
		try {
			DishesQueries.addDishes(newDish);
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		response.sendRedirect("all-menu.jsp"); 
	}

}
