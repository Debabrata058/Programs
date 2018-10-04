// Author : devBOX
package crud;

import java.util.*;
import java.sql.*;
public class CRUD {

	public static void main(String[] args) {
		
		while(true) {
			System.out.println("*****MENU*****");
			Scanner sc = new Scanner(System.in);
			System.out.println("1: Insert Data\n2: Update Data\n3: Select Data\n");
			System.out.println("Choose your option : ");
			int option = sc.nextInt();
			switch (option) {
			case 1:
				new CRUD().insertData();
				break;
			case 2:
				new CRUD().updateTable();
				break;
			case 3:
				new CRUD().viewTable();
				break;
			case 4:
				new CRUD().deleteData();
				break;
			default:
				break;
			}
		}
	}
	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CRUD","root","root");
		}catch (Exception e) {
			// TODO: handle exception
		}
		return con;
	}
	public void updateTable() {
		Connection con = null;
		String sql;
		try {
			con = new CRUD().getConnection();
			System.out.println("Enter the Id : ");
			int id = new Scanner(System.in).nextInt();
			System.out.println("Enter the student name : ");
			String name = new Scanner(System.in).nextLine();
			sql = "UPDATE `CRUD`.`Student` SET `Name`='"+name+"' WHERE `Id`='"+id+"'";
			PreparedStatement pst = con.prepareStatement(sql);
			int result = pst.executeUpdate();
			if(result != 0)
				System.out.println("Updated Successfully");
			else
				System.out.println("Unsuccessful updation");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	void deleteData()
	{
		Connection con = null;
		String sql;
		try {
			con = new CRUD().getConnection();
			System.out.println("Enter the Id : ");
			int id = new Scanner(System.in).nextInt();
			sql = "DELETE FROM `CRUD`.`Student` WHERE `Id`='"+id+"'";
			PreparedStatement pst = con.prepareStatement(sql);
			int result = pst.executeUpdate();
			if(result != 0)
				System.out.println("Updated Successfully");
			else
				System.out.println("Unsuccessful updation");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	void viewTable() {
		// TODO Auto-generated method stub
		String sql;
		try {
			Connection con = new CRUD().getConnection();
			sql = "select * from Student";
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				System.out.print(rs.getInt(1)+"\t");
				System.out.print(rs.getString(2));
				System.out.println();
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	void insertData() {
		String sql;
		try {
			Connection con = new CRUD().getConnection();
			System.out.println("Enter the student name : ");
			String name = new Scanner(System.in).nextLine();
			sql = "INSERT INTO `CRUD`.`Student` (`Name`) VALUES ('"+name+"')";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.executeUpdate();
			System.out.println("Sucessfull");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
