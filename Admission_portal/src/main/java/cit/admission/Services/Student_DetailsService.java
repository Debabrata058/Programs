package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.StudentRegisterModel;

public class Student_DetailsService {

	public static List<StudentRegisterModel> studentDetails(){
		
		List<StudentRegisterModel> stu_list = new ArrayList<StudentRegisterModel>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "SELECT * FROM admission_system.student_register";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			rst = pst.executeQuery();
			while(rst.next()) {
				StudentRegisterModel srm = new StudentRegisterModel();
				srm.setUid(rst.getString(2));
				srm.setFname(rst.getString(3));
				srm.setLname(rst.getString(4));
				srm.setEmail(rst.getString(5));
				srm.setContact(rst.getString(6));
				srm.setAlt_contact(rst.getString(7));
				srm.setSchool_name(rst.getString(8));
				srm.setBoard(rst.getString(9));
				srm.setMark12(rst.getString(10));
				srm.setYear12(rst.getString(11));
				srm.setParent_fname(rst.getString(12));
				srm.setParent_lname(rst.getString(13));
				srm.setParent_contact(rst.getString(14));
				srm.setParent_email(rst.getString(15));
				srm.setAt(rst.getString(16));
				srm.setPost(rst.getString(17));
				srm.setCity(rst.getString(18));
				srm.setDistrict(rst.getString(19));
				srm.setState(rst.getString(20));
				srm.setPin(rst.getString(21));
				srm.setMark10(rst.getString(22));
				srm.setYear10(rst.getString(23));
				srm.setCollege(rst.getString(24));
				srm.setBoard12(rst.getString(25));
				
				stu_list.add(srm);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return stu_list;
	}
}
