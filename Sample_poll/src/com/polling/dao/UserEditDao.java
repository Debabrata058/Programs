package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class UserEditDao {

	public static boolean userEdit(String fname, String lname, String town, String district, String phone, String password, String email) {
			boolean status = false;
			Connection con=null;
			PreparedStatement pst=null;
			try {
				con=DBConnection.createConnection();
				String query="update user_register set first_name=?,last_name=?,town=?,district=?,phone=?,password=? where email=?";
				pst = con.prepareStatement(query);
				pst.setString(1, fname);
				pst.setString(2, lname);
				pst.setString(3, town);
				pst.setString(4, district);
				pst.setString(5, phone);
				pst.setString(6, password);
				pst.setString(7, email);
				pst.executeUpdate();
				status=true;
				
				
			}catch(Exception e){
				
			}
			return status;
		
		
	}

}
