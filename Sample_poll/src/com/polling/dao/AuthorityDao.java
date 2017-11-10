package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.polling.bean.AuthorityBean;

public class AuthorityDao {
	public static AuthorityBean authorityProfile(String email) {
		AuthorityBean bean = new AuthorityBean();
		Connection con = null;
		PreparedStatement pst = null;
		String sql = "SELECT * FROM polling_system.authority_register where email = ?";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				bean.setFname(rs.getString(1));
				bean.setLname(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setContact(rs.getString(4));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return bean;
	}
}
