package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbConnection.DBconnection;

public class AdminQueries {
	
	
	public static boolean validateAdmin(String email,String password) throws ClassNotFoundException, SQLException {
		boolean isSuccess=false;
		
		try(Connection con=DBconnection.getConnection()){
			String query="SELECT email,password FROM admin WHERE email=? AND password=?";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, email);
			ps.setString(2, password);
			System.out.println(ps);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				isSuccess=true;
			}
		}catch(SQLException e) {
			System.out.println("query failed"+e);
		}
		
		return isSuccess;
	}
	
	
	public static boolean validateResAdmin(String email,String password) throws ClassNotFoundException, SQLException {
		boolean isSuccess=false;
		
		try(Connection con=DBconnection.getConnection()){
			String query="SELECT email,password FROM admin_restaurant WHERE email=? AND password=?";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, email);
			ps.setString(2, password);
			System.out.println(ps);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				isSuccess=true;
			}
		}catch(SQLException e) {
			System.out.println("query failed"+e);
		}
		
		return isSuccess;
	}
	
}
