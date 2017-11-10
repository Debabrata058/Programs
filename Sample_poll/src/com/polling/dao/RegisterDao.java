package com.polling.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.polling.bean.*;
import com.polling.dao.DBConnection;

public class RegisterDao {

	public String registerUser(RegisterBean bean) throws SQLException {
		
		// Fetching Data from bean and storing it in Database.
		String fname=bean.getFname();
		String lname=bean.getLname();
		String town=bean.getTown();
		String district=bean.getDistrict();
		String email=bean.getEmail();
		String phone=bean.getPhone();
		String password=bean.getPassword();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			String query="insert into user_register(first_name,last_name,town,district,email,phone,password)values(?,?,?,?,?,?,?)";
			pst=con.prepareStatement(query);
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, town);
			pst.setString(4, district);
			pst.setString(5, email);
			pst.setString(6, phone);
			pst.setString(7, password);
			
			int i=pst.executeUpdate();
			
			if(i!=0) // ensuring data insertion...
				return "SUCCESS";
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "Oops... Something Went wrong there...!";
	}

}
