package dbConnection;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	public static String Url="jdbc:mysql://localhost:3306/ofs";
	public static String Username="root";
	public static String Password="";
	
	static {
		try {
			Class.forName("com.mysql.cj.jbdc.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		return DriverManager.getConnection(Url,Username,Password);
	}
}

