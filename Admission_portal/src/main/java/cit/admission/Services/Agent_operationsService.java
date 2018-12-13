package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Agent_operationsModel;

public class Agent_operationsService {

	public static boolean student_RegisterAgent(Agent_operationsModel aom) {
		Connection con = null;
		PreparedStatement pst = null;
		String querry = "insert into admission_system.student_regd_agent values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,null)"; 
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, aom.getAgent_id());
			pst.setString(2, aom.getDate());
			pst.setString(3, aom.getFname());
			pst.setString(4, aom.getLname());
			pst.setString(5, aom.getEmail());
			pst.setString(6, aom.getContact());
			pst.setString(7, aom.getSchool());
			pst.setString(8, aom.getMark10());
			pst.setString(9, aom.getCollege());
			pst.setString(10, aom.getMark12());
			pst.setString(11, aom.getParent_fname());
			pst.setString(12, aom.getParent_lname());
			pst.setString(13, aom.getParent_contact());
			pst.setString(14, aom.getParent_email());
			pst.setString(15, aom.getAt());
			pst.setString(16, aom.getPost());
			pst.setString(17, aom.getCity());
			pst.setString(18, aom.getDistrict());
			pst.setString(19, aom.getState());
			pst.setString(20, aom.getPin());
			
			int i = pst.executeUpdate();
			if(i != 0) {
				return true; 
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	
	public static List<Agent_operationsModel> AgentRegd_StudentDetails() {
		
		List<Agent_operationsModel> agent_students = new ArrayList<Agent_operationsModel>();
		Connection con =null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select * from admission_system.student_regd_agent";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			rst = pst.executeQuery();
			while(rst.next()) {
				Agent_operationsModel agentstuds = new Agent_operationsModel();
				agentstuds.setAgent_id(rst.getString(2));
				agentstuds.setDate(rst.getString(3));
				agentstuds.setFname(rst.getString(4));
				agentstuds.setLname(rst.getString(5));
				agentstuds.setEmail(rst.getString(6));
				agentstuds.setContact(rst.getString(7));
				agentstuds.setSchool(rst.getString(8));
				agentstuds.setMark10(rst.getString(9));
				agentstuds.setCollege(rst.getString(10));
				agentstuds.setMark12(rst.getString(11));
				agentstuds.setParent_fname(rst.getString(12));
				agentstuds.setParent_lname(rst.getString(13));
				agentstuds.setParent_contact(rst.getString(14));
				agentstuds.setParent_email(rst.getString(15));
				agentstuds.setAt(rst.getString(16));
				agentstuds.setPost(rst.getString(17));
				agentstuds.setCity(rst.getString(18));
				agentstuds.setDistrict(rst.getString(19));
				agentstuds.setState(rst.getString(20));
				agentstuds.setPin(rst.getString(21));
				agentstuds.setPayble(rst.getString(22));
				
				agent_students.add(agentstuds);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		
		
		return agent_students;
	}
	public static boolean agent_Payble_byAuth(Agent_operationsModel aom) {
		Connection con = null;
		PreparedStatement pst = null;
		String querry = "update admission_system.student_regd_agent set payble=? where agent_id=?";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, aom.getPayble());
			pst.setString(2, aom.getAgent_id());
			
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
