package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Auth_DetailsModel;

public class Auth_DetailsService {
	
	public static List<Auth_DetailsModel> viewAuthList() {
		
		List<Auth_DetailsModel> auth_list = new ArrayList<Auth_DetailsModel>();
		Connection con = null;
		PreparedStatement pst =null;
		String querry = "select * from admission_system.auth_register";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				Auth_DetailsModel auth_model = new Auth_DetailsModel();
				auth_model.setUid(rst.getString(1));
				auth_model.setFname(rst.getString(2));
				auth_model.setLname(rst.getString(3));
				auth_model.setUniversity(rst.getString(4));
				auth_model.setDesignation(rst.getString(5));
				auth_model.setEmail(rst.getString(6));
				auth_model.setContact(rst.getString(7));
				
				auth_list.add(auth_model);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return auth_list;
	}

}
