package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Tellicaller_registerModel;

public class Tellicaller_registerService {

	public static boolean tellicaller_register(Tellicaller_registerModel t_model) {
		
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = DatabaseConnection.createConnection();
			String querry = "insert into tellicaller_register values(?,?,?,?,?,?,?,?)";
			pst = con.prepareStatement(querry);
			pst.setString(1, t_model.getTell_id());
			pst.setString(2, t_model.getFname());
			pst.setString(3, t_model.getLname());
			pst.setString(4, t_model.getUniversity());
			pst.setString(5, t_model.getDesignation());
			pst.setString(6, t_model.getEmail());
			pst.setString(7, t_model.getContact());
			pst.setString(8, t_model.getPassword());
			
			int i = pst.executeUpdate();
			if(i!=0) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
