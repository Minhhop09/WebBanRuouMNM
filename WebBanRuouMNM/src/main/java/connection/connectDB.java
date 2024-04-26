package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class connectDB {
	public static Connection getConnect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dataruou", "root", "");
					
			return conn;

		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}

	public static void main(String[] args) {
		System.out.println(getConnect());
	}

}