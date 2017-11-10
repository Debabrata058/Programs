/**
 * 
 */
package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.polling.bean.*;
import com.polling.dao.DBConnection;
/**
 * @author USER
 *
 */
public class A_registerDao {

	public String a_registerUser(AuthorityBean bean) {
		
			String fname=bean.getFname();
			String lname=bean.getLname();
			String contact=bean.getContact();
			String email=bean.getEmail();
			String password=bean.getPassword();
			
			Connection con=null;
			PreparedStatement pst=null;
			
			try {
				con=DBConnection.createConnection();
				String query="insert into authority_register(first_name,last_name,email,contact,password)values(?,?,?,?,?)";
				pst=con.prepareStatement(query);
				pst.setString(1, fname);
				pst.setString(2, lname);
				pst.setString(3, email);
				pst.setString(4, contact);
				pst.setString(5, password);
				
				int i=pst.executeUpdate();
				
				if (i!=0)
					return "SUCCESS";
			}catch(Exception e) {
				e.printStackTrace();
			}
			return "Oops... Something went Wrong there...!";
	}
	
		
}
