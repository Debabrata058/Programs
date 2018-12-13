package cit.admission.Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cit.admission.Database.DatabaseConnection;
import cit.admission.Model.Agent_registerModel;

public class Agent_DetailsService {
	
	public static List<Agent_registerModel> viewAgentList(){
		
		List<Agent_registerModel> agent_model = new ArrayList<Agent_registerModel>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;
		String querry = "select * from agent_register";
		try {
			con = DatabaseConnection.createConnection();
			pst = con.prepareStatement(querry);
			rst = pst.executeQuery();
			while(rst.next()) {
				Agent_registerModel agentModel = new Agent_registerModel();
				agentModel.setAgent_id(rst.getString(1));
				agentModel.setFname(rst.getString(2));
				agentModel.setLname(rst.getString(3));
				agentModel.setUniversity(rst.getString(4));
				agentModel.setDesignation(rst.getString(5));
				agentModel.setEmail(rst.getString(6));
				agentModel.setContact(rst.getString(7));
				
				agent_model.add(agentModel);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return agent_model; 
	}

}
