package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Agent_registerModel;

public class Agent_registerService {

	public static boolean agentRegister(Agent_registerModel agentModel) {
		
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = DatabaseConnection.createConnection();
			String querry = "insert into agent_register values(?,?,?,?,?,?,?,?)";
			pst = con.prepareStatement(querry);
			pst.setString(1, agentModel.getAgent_id());
			pst.setString(2, agentModel.getFname());
			pst.setString(3, agentModel.getLname());
			pst.setString(4, agentModel.getUniversity());
			pst.setString(5, agentModel.getDesignation());
			pst.setString(6, agentModel.getEmail());
			pst.setString(7, agentModel.getContact());
			pst.setString(8, agentModel.getPassword());
			
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
