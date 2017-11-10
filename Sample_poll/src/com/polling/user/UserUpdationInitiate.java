package com.polling.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.LoginBean;
import com.polling.bean.UserBean;
import com.polling.dao.UserprofileDao;

/**
 * Servlet implementation class UserUpdationInitiate
 */
@WebServlet("/UserUpdationInitiate")
public class UserUpdationInitiate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		LoginBean bean = (LoginBean)session.getAttribute("userBean");
		if(bean !=  null) {
			
			UserBean userprofile= UserprofileDao.userProfile(bean.getEmail());
			if(userprofile != null) {
				request.setAttribute("userProfile", userprofile);
				RequestDispatcher rsd = request.getRequestDispatcher("UserEditProfile.jsp");
				rsd.forward(request, response);
			}
		}
		else
			response.sendRedirect("Authority_login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
