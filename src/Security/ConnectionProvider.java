package Security;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	private static Connection con;

	public static Connection getConnection() {
		System.out.println("---pass---");
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG", "root", "root");
			} catch (Exception e) {
				System.out.println("Connection Problem" + e.getMessage());
			}
		} catch (Exception e) {
			System.out.println("Driver Register Error" + e.getMessage());
		}
		return con;
	}

}
