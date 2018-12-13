package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Tellicaller_registerModel;

public class Tellicaller_DetailService {

	public static List<Tellicaller_registerModel> view_tellicaller(){
		
		List<Tellicaller_registerModel> telli_model = new ArrayList<Tellicaller_registerModel>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select * from admission_system.tellicaller_register"; 
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			rst = pst.executeQuery();
			while(rst.next()) {
				Tellicaller_registerModel t_model = new Tellicaller_registerModel();
				t_model.setTell_id(rst.getString(1));
				t_model.setFname(rst.getString(2));
				t_model.setLname(rst.getString(3));
				t_model.setUniversity(rst.getString(4));
				t_model.setDesignation(rst.getString(5));
				t_model.setEmail(rst.getString(6));
				t_model.setContact(rst.getString(7));
				
				telli_model.add(t_model);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return telli_model;
	} 
}
