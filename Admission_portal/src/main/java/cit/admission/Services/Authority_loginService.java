package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Authority_loginModel;

public class Authority_loginService {

	public static Authority_loginModel authority_login(Authority_loginModel alm) {
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		Authority_loginModel authlog = new Authority_loginModel();
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement("select fname,lname from auth_register where uid=? and password=?");
			pst.setString(1, alm.getUid());
			pst.setString(2, alm.getPassword());
			rst = pst.executeQuery();
			
			while(rst.next()) {
				authlog.setUid(alm.getUid());
				authlog.setFname(rst.getString(1));
				authlog.setLname(rst.getString(2));
				authlog.setStatus(true);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return authlog;
	}

}
