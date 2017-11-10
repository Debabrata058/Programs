package com.polling.user;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.polling.bean.*;
import com.polling.dao.LoginDao;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			LoginBean bean= new LoginDao().authenticateUser(email,password);
			if(bean.isStatus() == false) {
			//RequestDispatcher rd = request.getRequestDispatcher("student_login.jsp");
			//rd.forward(request, response);
			//request.setAttribute("ErrorMessage","Incorrect Id or Pasword!!!");
			response.sendRedirect("user_login.jsp?error=0");
			}
			else  {
				HttpSession session=request.getSession();// session creation
				session.setAttribute("userBean", bean);// bean object contain user login details storing to userBean variable.
				
				RequestDispatcher rd=request.getRequestDispatcher("PollList");
				rd.forward(request, response);
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
