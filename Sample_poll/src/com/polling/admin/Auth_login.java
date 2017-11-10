package com.polling.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.*;
import com.polling.dao.A_LoginDao;

/**
 * Servlet implementation class Auth_login
 */
@WebServlet("/Auth_login")
public class Auth_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String email=request.getParameter("email");                           // Name of parameter
			String password=request.getParameter("password");                     //Name of parameter
			
			A_LoginBean bean= new A_LoginDao().authenticateUser(email,password);  //passing  the value to authenticateuser method of A_login dao class.
			request.setAttribute("bean", bean);
			if(bean.isStatus() == false) {                   // Status is method of A_loginBean class and checking for status.
				response.sendRedirect("Authority_login.jsp?error=0"); // sendredirect is method of http response interface. error variable store a value 0 for checking id password correct or not.
			}
			else {
				HttpSession session = request.getSession();           // session creation
				session.setAttribute("userBean", bean);					// userbean variable cntain all the user information.
				RequestDispatcher rd=request.getRequestDispatcher("Admin_Dashboard.jsp");
				rd.forward(request, response); // forward method httpservlet interface.
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
