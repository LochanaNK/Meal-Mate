package services;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import dbConnection.DBconnection;
import models.Restaurants;

public class RestaurantsQueries {

    PrintWriter pr = new PrintWriter(System.out);

    public void addRestaurant(Restaurants restaurant) throws SQLException, ClassNotFoundException {
        String query = "INSERT INTO `restaurant`(`name`, `email`, `contact`) VALUES (?, ?, ?)";
        try (Connection con = DBconnection.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, restaurant.getName());
            ps.setString(2, restaurant.getEmail());
            ps.setString(3, restaurant.getContact());
            int rs = ps.executeUpdate();

            if (rs == 1) {
                System.out.println("Success");
            }
        }
    }

    public void removeRestaurant(String name) throws SQLException {
        try (Connection con = DBconnection.getConnection()) {
            String query = "DELETE FROM restaurant WHERE name=?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, name);
                int rs=ps.executeUpdate();
                if (rs == 1) {
                    System.out.println("Success");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database connection issue: " + e.getLocalizedMessage());
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
    }

    public void getAllRestaurants() throws SQLException {
        try (Connection con = DBconnection.getConnection()) {
            String query = "SELECT * FROM restaurant";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.executeQuery();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Database connection issue: " + e.getLocalizedMessage());
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }
    }
}
