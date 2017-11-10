/**
 * 
 */
package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.polling.bean.*;
import com.polling.dao.DBConnection;

/**
 * @author DK
 *
 */
public class LoginDao {

	public LoginBean authenticateUser(String email,String password) {
		
		Connection con=null;
		PreparedStatement statement=null;
		ResultSet resultSet=null;
		LoginBean bean = new LoginBean();
		try {
			con=DBConnection.createConnection();
			statement=con.prepareStatement("select first_name,last_name,email from user_register where email=? and password=?");
			statement.setString(1, email);
			statement.setString(2, password);
			resultSet=statement.executeQuery();
			while(resultSet.next()) {
					bean.setUser_first_name(resultSet.getString(1));
					bean.setUser_last_name(resultSet.getString(2));
					bean.setEmail(resultSet.getString(3));
					bean.setStatus(true);
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
		
			
}
