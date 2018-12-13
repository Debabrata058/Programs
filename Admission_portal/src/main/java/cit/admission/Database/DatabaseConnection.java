package cit.admission.Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

	public static Connection createConnection()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admission_system?autoReconnect=true&useSSL=false","root","root");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
