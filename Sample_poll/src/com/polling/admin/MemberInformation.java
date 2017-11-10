package com.polling.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.A_LoginBean;
import com.polling.bean.UserBean;
import com.polling.dao.UserDao;

/**
 * Servlet implementation class MemberInformation
 */
@WebServlet("/MemberInformation")
public class MemberInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		A_LoginBean bean = (A_LoginBean)session.getAttribute("userBean");
		if(bean !=  null) {
				List<UserBean> userList = UserDao.viewUserList();
				request.setAttribute("userList", userList);
				RequestDispatcher rsd = request.getRequestDispatcher("Member_info.jsp");
				rsd.forward(request, response);
			
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
