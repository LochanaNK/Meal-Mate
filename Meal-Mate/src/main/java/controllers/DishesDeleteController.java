package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import services.DishesQueries;
import java.io.IOException;
import java.sql.SQLException;

public class DishesDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d_id=request.getParameter("dish_del");
		System.out.println(d_id);
		try {
			if(DishesQueries.removeDishes(d_id)) {
				RequestDispatcher dis=request.getRequestDispatcher("all-menu.jsp");
				dis.forward(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
