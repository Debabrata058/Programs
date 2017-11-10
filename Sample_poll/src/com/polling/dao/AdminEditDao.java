package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminEditDao {

	public static boolean AdminEdit(String fname, String lname, String contact, String password, String email) {
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			String query="update authority_register set first_name=?,last_name=?,contact=?,password=? where email=?";
			pst = con.prepareStatement(query);
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, contact);
			pst.setString(4, password);
			pst.setString(5, email);
			pst.executeUpdate();
			status=true;
	}catch(Exception e) {
		
		}
		return status;
	}

}
