package com.polling.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.polling.bean.*;
import com.polling.dao.RegisterDao;

/**
 * Servlet implementation class StudentRegister
 */
@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retriving all Parameters
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String town= request.getParameter("town");
		String district = request.getParameter("district");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		//Set all values in RegisterBean class.
		RegisterBean bean = new RegisterBean();
		
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setTown(town);
		bean.setDistrict(district);
		bean.setEmail(email);
		bean.setPhone(phone);
		bean.setPassword(password);
		
		//call method in DAO class to insert data in table
		
		RegisterDao registerdao = new RegisterDao();
		String userRegistered = null;
		try {
			userRegistered = registerdao.registerUser(bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(userRegistered.equals("SUCCESS"))
		{
			request.getRequestDispatcher("user_login.jsp").forward(request,response);
			
		}
		else {
			request.setAttribute("ERRORmessage",userRegistered);
			request.getRequestDispatcher("user_register.jsp").forward(request, response);
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
