package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Tellicaller_operationsModel;
import cit.admission.Model.Tellicaller_registerModel;

public class Tellicaller_operationsService {

	public static Tellicaller_operationsModel get_stu_details(int first_slno) {
		
		Tellicaller_operationsModel tom = new Tellicaller_operationsModel();
		
		Connection con =null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select * from admission_system.student_register where sid = ?";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setInt(1, first_slno);
			rst = pst.executeQuery();
			while(rst.next()) {
				tom.setSid(rst.getInt(1));
				tom.setUid(rst.getString(2));
				tom.setFirstname(rst.getString(3));
				tom.setLastname(rst.getString(4));
				tom.setEmail(rst.getString(5));
				tom.setContact(rst.getString(6));
				tom.setAlt_contact(rst.getString(7));
				tom.setParentfirstName(rst.getString(12));
				tom.setParentlastName(rst.getString(13));
				tom.setParentContact(rst.getString(14));
				tom.setParentemail(rst.getString(15));
				tom.setAt(rst.getString(16));
				tom.setPost(rst.getString(17));
				tom.setCity(rst.getString(18));
				tom.setDistrict(rst.getString(19));
				tom.setState(rst.getString(20));
				tom.setPin(rst.getString(21));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return tom;
	}

	public static boolean assign_tellicaller(Tellicaller_operationsModel tell_list, String tell_id) {
		Connection con = null;
		PreparedStatement pst = null;
		String querry = "insert into admission_system.tellicaller_assign_register values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,null,null)";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setInt(1, tell_list.getSid());
			pst.setString(2, tell_list.getUid());
			pst.setString(3, tell_id);
			pst.setString(4, tell_list.getFirstname());
			pst.setString(5, tell_list.getLastname());
			pst.setString(6, tell_list.getEmail());
			pst.setString(7, tell_list.getContact());
			pst.setString(8, tell_list.getAlt_contact());
			pst.setString(9, tell_list.getParentfirstName());
			pst.setString(10, tell_list.getParentlastName());
			pst.setString(11, tell_list.getParentContact());
			pst.setString(12, tell_list.getParentemail());
			pst.setString(13, tell_list.getAt());
			pst.setString(14, tell_list.getPost());
			pst.setString(15, tell_list.getCity());
			pst.setString(16, tell_list.getDistrict());
			pst.setString(17, tell_list.getState());
			pst.setString(18, tell_list.getPin());
			
			int i = pst.executeUpdate();
			if(i!=0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	
	public static List<Tellicaller_operationsModel> get_telli_assignments(){
		
		List<Tellicaller_operationsModel> asignList = new ArrayList<Tellicaller_operationsModel>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select * from admission_system.tellicaller_assign_register";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			rst = pst.executeQuery();
			while(rst.next()) {
				Tellicaller_operationsModel tom = new Tellicaller_operationsModel();
				tom.setSid(rst.getInt(1));
				tom.setUid(rst.getString(2));
				tom.setTell_id(rst.getString(3));
				tom.setFirstname(rst.getString(4));
				tom.setLastname(rst.getString(5));
				tom.setEmail(rst.getString(6));
				tom.setContact(rst.getString(7));
				tom.setAlt_contact(rst.getString(8));
				tom.setParentfirstName(rst.getString(9));
				tom.setParentlastName(rst.getString(10));
				tom.setParentContact(rst.getString(11));
				tom.setParentemail(rst.getString(12));
				tom.setAt(rst.getString(13));
				tom.setPost(rst.getString(14));
				tom.setCity(rst.getString(15));
				tom.setDistrict(rst.getString(16));
				tom.setState(rst.getString(17));
				tom.setPin(rst.getString(18));
				tom.setAgree(rst.getString(19));
				tom.setDate(rst.getString(20));
				
				asignList.add(tom);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return asignList;
	}
	
	public static Tellicaller_registerModel validate_tellicaller(Tellicaller_registerModel trm) {
		
		Tellicaller_registerModel T_model = new Tellicaller_registerModel();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select fname,lname,university,designation,email,contact from admission_system.tellicaller_register where tell_id=? and password=?";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, trm.getTell_id());
			pst.setString(2, trm.getPassword());
			rst = pst.executeQuery();
			
			while(rst.next()) {
				T_model.setTell_id(trm.getTell_id());
				T_model.setFname(rst.getString(1));
				T_model.setLname(rst.getString(2));
				T_model.setUniversity(rst.getString(3));
				T_model.setDesignation(rst.getString(4));
				T_model.setEmail(rst.getString(5));
				T_model.setContact(rst.getString(6));
				T_model.setStatus(true);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return T_model;
	}
	
	public static boolean Telli_passwordUpdate(Tellicaller_registerModel trm,String tell_id) {
		
		Connection con = null;
		PreparedStatement pst = null;
		String querry = "update admission_system.tellicaller_register set password=? where tell_id=?";
		
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, trm.getPassword());
			pst.setString(2, tell_id);
			
			int i = pst.executeUpdate();
			if(i!=0) {
				
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public static boolean telli_Confirmation(Tellicaller_operationsModel tom) {
		
		Connection con = null;
		PreparedStatement pst = null;
		String querry = "update admission_system.tellicaller_assign_register set agree=?, date=? where sid=?";
		
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, tom.getAgree());
			pst.setString(2, tom.getDate());
			pst.setInt(3, tom.getSid());
			
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
