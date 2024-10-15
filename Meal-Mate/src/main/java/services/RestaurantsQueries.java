package services;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import dbConnection.DBconnection;
import models.Restaurants;

public class RestaurantsQueries {

    PrintWriter pr = new PrintWriter(System.out);

    public static void addRestaurant(Restaurants restaurant) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO restaurant(a_id,title, email, phone,address, image) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = DBconnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
        	ps.setInt(1, restaurant.getA_id());
            ps.setString(2, restaurant.getResname());
            ps.setString(3, restaurant.getEmail());
            ps.setString(4, restaurant.getPhone());
            ps.setString(5, restaurant.getAddress());
			ps.setString(6, restaurant.getImage());
			
            int rs = ps.executeUpdate();
            System.out.println(ps);

            if (rs == 1) {
                System.out.println("Success");
            }else {
            	System.out.println("failed");
            }
        }catch(SQLException e) {
        	System.out.println(e);
        }
    }

    public static boolean removeRestaurant(String r_id) throws SQLException {
    	
    	boolean isSuccess=false;
        try (Connection con = DBconnection.getConnection()) {
            String query = "DELETE FROM restaurant WHERE rs_id = ?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, r_id);
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

    public static HashMap<String,HashMap<String,String>> getAllRestaurants() throws SQLException,ClassNotFoundException {
    	
    	HashMap<String,HashMap<String,String>> restaurants=new HashMap<>();
    	
        try (Connection con = DBconnection.getConnection()) {
            String query = "SELECT * FROM restaurant ORDER BY rs_id DESC";
            try (PreparedStatement ps = con.prepareStatement(query)) {

                ResultSet rs=ps.executeQuery();
                while(rs.next()) {
                	HashMap<String,String> res_details=new HashMap<>();
                	String r_id=Integer.toString(rs.getInt("rs_id"));

                	res_details.put("title", rs.getString("title"));
                	res_details.put("email", rs.getString("email"));
                	res_details.put("phone", rs.getString("phone"));
                	res_details.put("address", rs.getString("address"));
                	res_details.put("image", rs.getString("image"));
                	res_details.put("date", rs.getString("date"));
                	
                	restaurants.put(r_id, res_details);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database connection issue: " + e.getLocalizedMessage());
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
        return restaurants;
    }
    public static void updateRestaurant(Restaurants restaurant, String r_id) throws SQLException, ClassNotFoundException {
        String query = "UPDATE restaurant SET title = ?, email = ?, phone = ?, address = ? WHERE rs_id=?";
        try (Connection con = DBconnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, restaurant.getResname());
            ps.setString(2, restaurant.getEmail());
            ps.setString(3, restaurant.getPhone());
            ps.setString(4, restaurant.getAddress());
            ps.setString(5, r_id); 
            System.out.println(ps);
            int rs = ps.executeUpdate();

            if (rs==1) {
                System.out.println("Update successful");
            } else {
                System.out.println("Update failed: No rows affected.");
            }
        } catch (SQLException | ClassNotFoundException e) {
        	System.out.println(e);
            e.printStackTrace();
            throw e; 
        }
    }

}
