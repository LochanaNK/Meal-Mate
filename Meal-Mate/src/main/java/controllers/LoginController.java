package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import services.AdminQueries;

import java.io.IOException;
import java.sql.SQLException;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		if(email.contains("res")) {
			try {
				if(AdminQueries.validateResAdmin(email,password)) {
					HttpSession session=request.getSession();
					
					session.setAttribute("u_email", email);
					System.out.println(session.getAttribute("u_email"));
					
					RequestDispatcher dis1=request.getRequestDispatcher("all-menu.jsp");
					dis1.forward(request, response);
				}
			} catch (ClassNotFoundException | SQLException | ServletException | IOException e) {

				e.printStackTrace();
			}
		}else {
				try {
					if(AdminQueries.validateAdmin(email, password)) {
						HttpSession session=request.getSession();
						
						session.setAttribute("u_email", email);
						System.out.println(session.getAttribute("u_email"));
						
						if(email.contains("res")) {
							
							
						}else {
						
							RequestDispatcher dis=request.getRequestDispatcher("all-users.jsp");
							dis.forward(request, response);
						}
						
					}
				} catch (ClassNotFoundException | SQLException | ServletException | IOException e) {

					e.printStackTrace();
				}
		}
	}

}
