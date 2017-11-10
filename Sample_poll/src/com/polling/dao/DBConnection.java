/**
 * 
 */
package com.polling.dao;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author USER
 *
 */
public class DBConnection {
	public static Connection createConnection()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/polling_system?autoReconnect=true&useSSL=false","root","root");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
