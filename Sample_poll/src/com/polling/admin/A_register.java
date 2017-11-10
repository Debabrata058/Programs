package com.polling.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.polling.bean.*;
import com.polling.dao.A_registerDao;

/**
 * Servlet implementation class A_register
 */
@WebServlet("/A_register")
public class A_register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String password=request.getParameter("password");
		
		AuthorityBean bean=new AuthorityBean();
		
		//set all value in Authority bean class
		
		bean.setFname(fname);
		bean.setLname(lname);
		bean.setEmail(email);
		bean.setContact(contact);
		bean.setPassword(password);
		
		// call method DAO class to insert data in table
		
		A_registerDao registerdao=new A_registerDao();
		String auth_Registered=null;
		try {
			auth_Registered=registerdao.a_registerUser(bean);
		}catch(Exception e) {
			e.printStackTrace();
		}
		if (auth_Registered.equals("SUCCESS")) {
			//request.getRequestDispatcher("Authority_login.jsp").forward(request, response);
			response.sendRedirect("Admin_join.jsp");
			
		}else {
			request.setAttribute("ERRORMessage",auth_Registered);
			request.getRequestDispatcher("Admin_join.jsp").forward(request, response);
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
