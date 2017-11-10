package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.polling.bean.UserBean;

public class UserDao {
	public static List<UserBean> viewUserList(){
		List<UserBean> userList = new ArrayList<UserBean>();
		Connection con = null;
		PreparedStatement pst = null;
		String sql = "SELECT * FROM polling_system.user_register";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				UserBean details = new UserBean();
				details.setFname(rst.getString(1));
				details.setLname(rst.getString(2));
				details.setTown(rst.getString(3));
				details.setDistrict(rst.getString(4));
				details.setEmail(rst.getString(5));
				details.setPhone(rst.getString(6));
				userList.add(details);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return userList;
	}
}
