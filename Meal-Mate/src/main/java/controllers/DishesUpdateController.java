package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Dishes;
import services.DishesQueries;
import java.io.IOException;
import java.sql.SQLException;

public class DishesUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NumberFormatException {
		
		String d_id=request.getParameter("dish_upd");
		System.out.println(d_id);
		int rs_id = Integer.parseInt(request.getParameter("rs_id"));
        String dishName = request.getParameter("d_name");
        String slogan = request.getParameter("slogan");
        String price = request.getParameter("price");
		String image = request.getParameter("image");
		Dishes updDishes=new Dishes(dishName,slogan,price,image,rs_id);

		try {
			DishesQueries.updateDishes(updDishes,d_id);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e);
		}catch(NumberFormatException e) {
			System.out.println(e);
		}
		response.sendRedirect("all-menu.jsp");
	}



}
