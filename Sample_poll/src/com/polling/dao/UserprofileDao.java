package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.polling.bean.UserBean;

public class UserprofileDao {

	public static UserBean userProfile(String email) {
		
		UserBean bean=new UserBean();
		Connection con = null;
		PreparedStatement pst = null;
		String sql = "SELECT * FROM polling_system.user_register where email = ?";
		
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				bean.setFname(rs.getString(1));
				bean.setLname(rs.getString(2));
				bean.setTown(rs.getString(3));
				bean.setDistrict(rs.getString(4));
				bean.setEmail(rs.getString(5));
				bean.setPhone(rs.getString(6));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return bean;
	}
	}


