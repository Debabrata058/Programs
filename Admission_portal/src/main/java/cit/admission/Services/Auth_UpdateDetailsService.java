package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpSession;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Auth_UpdateDetailsModel;

public class Auth_UpdateDetailsService {

	public static Auth_UpdateDetailsModel authUpdate(Auth_UpdateDetailsModel auth_update,HttpSession session) {
		
		Auth_UpdateDetailsModel updateDetail = new Auth_UpdateDetailsModel();
		//String id = session.getAttribute("authUser").toString();
		
		Connection con = null;
		PreparedStatement pst =null;
		
		try {
			con = DatabaseConnection.createConnection();
			String query = "update auth_register set fname=?, lname=?, university=?, designation=?, email=?, contact=?, password=? where uid=?";
			pst = con.prepareStatement(query);
			pst.setString(1, auth_update.getFname());
			pst.setString(2, auth_update.getLname());
			pst.setString(3, auth_update.getUniversity());
			pst.setString(4, auth_update.getDesignation());
			pst.setString(5, auth_update.getEmail());
			pst.setString(6, auth_update.getContact());
			pst.setString(7, auth_update.getPassword());
			pst.setString(8, "d01");
			pst.executeUpdate();
			
			updateDetail.setStatus(true);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return updateDetail;
	}
}
