package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Agent_registerModel;

public class Agent_loginService {

	public static Agent_registerModel agent_login(Agent_registerModel arm) {
		
		Agent_registerModel agent_model = new Agent_registerModel();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select fname,lname,university,designation,email,contact from admission_system.agent_register where agent_id=? and password=?";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			pst.setString(1, arm.getAgent_id());
			pst.setString(2, arm.getPassword());
			rst = pst.executeQuery();
			
			while(rst.next()) {
				agent_model.setAgent_id(arm.getAgent_id());
				agent_model.setFname(rst.getString(1));
				agent_model.setLname(rst.getString(2));
				agent_model.setUniversity(rst.getString(3));
				agent_model.setDesignation(rst.getString(4));
				agent_model.setEmail(rst.getString(5));
				agent_model.setContact(rst.getString(6));
				agent_model.setStatus(true);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return agent_model;
	}
	
	public static boolean agent_passwordUpdate(Agent_registerModel agentModel, String agent_id) {
		Connection con = null;
		PreparedStatement pst = null;
		String query = "update admission_system.agent_register set password=? where agent_id=?";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, agentModel.getPassword());
			pst.setString(2, agent_id);
			
			int i =pst.executeUpdate();
			if(i!=0) {
				return true;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return false;
	}
}
