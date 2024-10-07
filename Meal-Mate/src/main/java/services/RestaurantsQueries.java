package services;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import dbConnection.DBconnection;
import models.Restaurants;
public class RestaurantsQueries {

	PrintWriter pr=new PrintWriter(System.out);
	public void addRestaurant(Restaurants restaurant)throws SQLException{
		try(Connection con=DBconnection.getConnection()){
			String query="INSERT INTO restaurant (name,email,contact) VALUES(?,?,?)";
			try(PreparedStatement ps=con.prepareStatement(query)){
				ps.setString(1, restaurant.getName());
				ps.setString(2, restaurant.getEmail());
				ps.setString(3, restaurant.getContact());
				
				ps.executeUpdate(query);
			}
		}catch(SQLException e) {
			pr.println("Database connection issue"+e.getLocalizedMessage());
			e.printStackTrace();
		}catch(ClassNotFoundException e1) {
			e1.printStackTrace();
		}
	}
	
	public void removeRestaurant(String name)throws SQLException{
		try(Connection con=DBconnection.getConnection()){
			String query="DELETE FROM restaurant WHERE name=?";
			try(PreparedStatement ps=con.prepareStatement(query)){
				ps.setString(1, name);
				
				ps.executeQuery();
			}
		}catch(SQLException e) {
			e.printStackTrace();
			pr.println("Database connection issue"+e.getLocalizedMessage());
		}catch(ClassNotFoundException e1) {
			e1.printStackTrace();
		}
	}
	
	public void getAllRestaurants()throws SQLException{
		try(Connection con=DBconnection.getConnection()){
			String query="SELECT *FROM restaurant";
			try(PreparedStatement ps=con.prepareStatement(query)){
				ps.executeQuery(query);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("Database connection issue"+e.getLocalizedMessage());
		}catch(ClassNotFoundException e1) {
			e1.printStackTrace();
		}
	}
}
