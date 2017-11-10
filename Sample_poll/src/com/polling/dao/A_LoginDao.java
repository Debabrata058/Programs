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
 * @author USER
 *
 */
public class A_LoginDao {

	public A_LoginBean authenticateUser(String email, String password) {
		
			Connection con=null;    //interface
			PreparedStatement pst=null;
			ResultSet resultSet=null;
			A_LoginBean bean =new A_LoginBean();
			try {
				con=DBConnection.createConnection(); // connecting to db.
				pst=con.prepareStatement("select first_name,last_name from authority_register where email=? and password=?");
				pst.setString(1, email);
				pst.setString(2, password);
				resultSet=pst.executeQuery();
				
				while(resultSet.next()) {
					bean.setEmail(email);
					bean.setUser_first_name(resultSet.getString(1));// fetching value from db and set to bean.
					bean.setUser_last_name(resultSet.getString(2));
					bean.setStatus(true);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return bean; // send to servlet Auth_login.java
	}

}
