package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.StudentRegisterModel;

public class StudentRegisterService {

	public boolean studentRegister(StudentRegisterModel srm) {
		
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = DatabaseConnection.createConnection();
			String querry = "insert into student_register values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pst = con.prepareStatement(querry);
			pst.setString(1, srm.getUid());
			pst.setString(2, srm.getFname());
			pst.setString(3, srm.getLname());
			pst.setString(4, srm.getEmail());
			pst.setString(5, srm.getContact());
		    pst.setString(6, srm.getAlt_contact());
		    pst.setString(7, srm.getSchool_name());
		    pst.setString(8, srm.getBoard());
		    pst.setString(9, srm.getMark12());
		    pst.setString(10, srm.getYear12());
		    pst.setString(11, srm.getParent_fname());
		    pst.setString(12, srm.getParent_lname());
		    pst.setString(13, srm.getParent_contact());
		    pst.setString(14,srm.getParent_email());
		    pst.setString(15, srm.getAt());
		    pst.setString(16, srm.getPost());
		    pst.setString(17, srm.getCity());
		    pst.setString(18, srm.getDistrict());
		    pst.setString(19, srm.getState());
		    pst.setString(20, srm.getPin());
		    pst.setString(21, srm.getMark10());
		    pst.setString(22, srm.getYear10());
		    pst.setString(23, srm.getCollege());
		    pst.setString(24, srm.getBoard12());
		    
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
