package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import dbConnection.DBconnection;
import models.Dishes;

public class DishesQueries {

	public static HashMap<Integer,HashMap<String,String>> getAllDishes() throws SQLException,ClassNotFoundException {
		HashMap<Integer,HashMap<String,String>>dishes=new HashMap<>();

    	
        try (Connection con = DBconnection.getConnection()) {
            String query = "SELECT r.rs_id, r.title, d.title AS dish_title, d.slogan, d.price , d.img ,d.d_id "
            		+ "FROM restaurant r "
            		+ "LEFT JOIN dishes d ON r.rs_id = d.rs_id"
            		+ "";
            try (PreparedStatement ps = con.prepareStatement(query)) {
            	System.out.println(ps);
                ResultSet rs=ps.executeQuery();
                Integer i=1;
                while(rs.next()) {
                		HashMap<String,String>dish_details=new HashMap<>();
                		String d_id=rs.getString("d_id");
                		String r_name=rs.getString("title");
                		dish_details.put("d_id", d_id);
                		dish_details.put("r_name", r_name);
                		dish_details.put("dish_title", rs.getString("dish_title"));
                		dish_details.put("slogan", rs.getString("slogan"));
                		dish_details.put("price", rs.getString("price"));
                		dish_details.put("image", rs.getString("img"));
                		
                		dishes.put(i,dish_details);
                		i++;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database connection issue: " + e.getLocalizedMessage());
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
        return dishes;
    }
	
	public static void addDishes(Dishes dishes) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO dishes(rs_id,title, slogan, price,img) VALUES (?, ?, ?, ?, ?)";
        try (Connection con = DBconnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
        	ps.setInt(1, dishes.getRs_id());
            ps.setString(2, dishes.getDishname());
            ps.setString(3, dishes.getSlogan());
            ps.setString(4, dishes.getPrice());
			ps.setString(5, dishes.getImage());
			
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
	
	
	public static boolean removeDishes(String d_id) throws SQLException {
    	
    	boolean isSuccess=false;
        try (Connection con = DBconnection.getConnection()) {
            String query = "DELETE FROM dishes WHERE d_id = ?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, d_id);
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
	
	public static void updateDishes(Dishes dishes, String d_id) throws SQLException, ClassNotFoundException {
        String query = "UPDATE dishes SET rs_id= ? ,title = ?, slogan = ?, price = ?, img= ?  WHERE d_id= ?";
        try (Connection con = DBconnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
        	ps.setInt(1, dishes.getRs_id());
            ps.setString(2, dishes.getDishname());
            ps.setString(3, dishes.getSlogan());
            ps.setString(4, dishes.getPrice());
            ps.setString(5, dishes.getImage());
            ps.setString(6, d_id); 
            int rs = ps.executeUpdate();
            System.out.println(ps);

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
