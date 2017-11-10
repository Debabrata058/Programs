package com.polling.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.polling.bean.PollBean;

public class PollDao {
	public static boolean pollcreation(String title,String question, String option1, String option2, String option3, String option4) {
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();      //connecting to database
			String query="insert into poll_creation values(null,?,?,?,?,?,?,null,null,?)";
			pst = con.prepareStatement(query);
			pst.setString(1, title);
			pst.setString(2, question);
			pst.setString(3, option1);
			pst.setString(4, option2);
			pst.setString(5, option3);
			pst.setString(6, option4);
			pst.setString(7, "ACTIVATED");
			pst.executeUpdate();
			status = true;
		}catch(Exception e) {
			
		}
		return status;
	}
	public static List<PollBean> viewActivatedPollList(){
		List<PollBean> pollList = new ArrayList<PollBean>();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			String query="SELECT p_id,title FROM polling_system.poll_creation where status = 'ACTIVATED'";
			pst = con.prepareStatement(query);
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				PollBean bean = new PollBean();
				bean.setPollId(rst.getInt(1));
				bean.setTitle(rst.getString(2));
				pollList.add(bean);
			}
		}catch(Exception e) {
			
		}
		return pollList;
	}
	public static List<PollBean> viewDeactivatedPollList(){
		List<PollBean> pollList = new ArrayList<PollBean>();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			String query="SELECT p_id,title FROM polling_system.poll_creation where status = 'DE-ACTIVATED'";
			pst = con.prepareStatement(query);
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				PollBean bean = new PollBean();
				bean.setPollId(rst.getInt(1));
				bean.setTitle(rst.getString(2));
				pollList.add(bean);
			}
		}catch(Exception e) {
			
		}
		return pollList;
	}
	public static PollBean getPollDetailsByPollId(int pollId) {
		PollBean bean = new PollBean();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			System.out.println(pollId);
			String query="SELECT * FROM polling_system.poll_creation where p_id = ?";
			pst = con.prepareStatement(query);
			pst.setInt(1, pollId);
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				
				bean.setPollId(rst.getInt(1));
				bean.setTitle(rst.getString(2));
				bean.setQuestion(rst.getString(3));
				bean.setOption1(rst.getString(4));
				bean.setOption2(rst.getString(5));
				bean.setOption3(rst.getString(6));
				bean.setOption4(rst.getString(7));
				bean.setStatus(rst.getString("status"));
			}
		}catch(Exception e) {
			
		}
		return bean;
	}
	public static boolean deactivatePoll( int pollId){
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		String sql = "UPDATE `polling_system`.`poll_creation` SET `status`=? WHERE `p_id`=?";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, "DE-ACTIVATED");
			pst.setInt(2, pollId);
			pst.executeUpdate();
			status = true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
	public static boolean activatePoll( int pollId){
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		String sql = "UPDATE `polling_system`.`poll_creation` SET `status`=? WHERE `p_id`=?";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, "ACTIVATED");
			pst.setInt(2, pollId);
			pst.executeUpdate();
			status = true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
	public static boolean deletePoll( int pollId){
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		String sql = "DELETE FROM `polling_system`.`poll_creation` WHERE `p_id`=?";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, pollId);
			pst.executeUpdate();
			status = true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
	public static boolean submitAnswer(int pollId,String email,String answer) {
		boolean status = false;
		Connection con=null;
		PreparedStatement pst=null;
		String sql = "INSERT INTO `polling_system`.`user_answer` VALUES (null,?, ?, ?)";
		try {
			con = DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setInt(2, pollId);
			pst.setString(3, answer);
			pst.executeUpdate();
			status = true;
		}catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
	public static List<PollBean> viewNotAnsweredPollList(String email){
		List<PollBean> pollList = new ArrayList<PollBean>();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con=DBConnection.createConnection();
			String query="SELECT p_id,title FROM polling_system.poll_creation where p_id not in (select PollId from polling_system.user_answer where UserEmail = ?) and status = ? ";
			pst = con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, "ACTIVATED");
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				PollBean bean = new PollBean();
				bean.setPollId(rst.getInt(1));
				bean.setTitle(rst.getString(2));
				pollList.add(bean);
			}
		}catch(Exception e) {
			
		}
		return pollList;
	}
	public static List<PollBean> viewAnsweredPollList(String email){
		List<PollBean> pollList = new ArrayList<PollBean>();
		Connection con=null;
		PreparedStatement pst=null;
		String query="SELECT p_id,title FROM polling_system.poll_creation where p_id in (select PollId from polling_system.user_answer where UserEmail = ?) and status = ? ";
		try {
			con=DBConnection.createConnection();
			pst = con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, "DE-ACTIVATED");
			ResultSet rst = pst.executeQuery();
			while(rst.next()) {
				PollBean bean = new PollBean();
				bean.setPollId(rst.getInt(1));
				bean.setTitle(rst.getString(2));
				pollList.add(bean);
			}
		}catch(Exception e) {
			
		}
		return pollList;
	}
	public static String getUserAnswerByPollId(int pollId,String email) {
		Connection con=null;
		PreparedStatement pst=null;
		String sql,answer= null;
		sql="SELECT Answer FROM polling_system.user_answer where PollId = ? and UserEmail = ?";
		try {
			con=DBConnection.createConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, pollId);
			pst.setString(2, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				answer = rs.getString(1);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return answer;
	}
	public static float[] getAnswerCount(String answer[],int pollId) {
		float[] count = new float[4];
		Connection con=null;
		PreparedStatement pst=null;
		String sql = "SELECT count(*) FROM polling_system.user_answer where Answer = ? and PollId = ?";
		for(int i = 0; i<answer.length; i++) {
			try {
				con=DBConnection.createConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, answer[i]);
				pst.setInt(2, pollId);
				ResultSet rs = pst.executeQuery();
				while(rs.next())
					count[i] = rs.getInt(1);
				con.close();
				pst.close();
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		return count;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
