package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import dbConnection.DBconnection;

public class UsersQueries {
	public static HashMap<String,HashMap<String,String>> getAllUsers() throws SQLException,ClassNotFoundException {
    	
    	HashMap<String,HashMap<String,String>> users=new HashMap<>();
    	
        try (Connection con = DBconnection.getConnection()) {
            String query = "SELECT * FROM users ORDER BY u_id DESC";
            try (PreparedStatement ps = con.prepareStatement(query)) {

                ResultSet rs=ps.executeQuery();
                while(rs.next()) {
                	HashMap<String,String> u_details=new HashMap<>();
                	String u_id=Integer.toString(rs.getInt("u_id"));

                	u_details.put("username", rs.getString("username"));
                	u_details.put("f_name", rs.getString("f_name"));
                	u_details.put("l_name", rs.getString("l_name"));
                	u_details.put("email", rs.getString("email"));
                	u_details.put("phone", rs.getString("phone"));
                	u_details.put("address", rs.getString("address"));
                	u_details.put("date", rs.getString("date"));
                	
                	users.put(u_id, u_details);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database connection issue: " + e.getLocalizedMessage());
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
        return users;
    }
	
	 public static boolean removeUser(String u_id) throws SQLException {
	    	
	    	boolean isSuccess=false;
	        try (Connection con = DBconnection.getConnection()) {
	            String query = "DELETE FROM users WHERE u_id = ?";
	            try (PreparedStatement ps = con.prepareStatement(query)) {
	                ps.setString(1, u_id);
	                int rs=ps.executeUpdate();
	                if (rs == 1) {
	                	isSuccess=true;
	                    System.out.println("Success");
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println("Database connection issue: " + e.getLocalizedMessage());
	        } catch (ClassNotFoundException e1) {
	            e1.printStackTrace();
	        }
	        
	        return isSuccess;
	    }
}
