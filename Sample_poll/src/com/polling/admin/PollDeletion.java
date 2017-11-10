package com.polling.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.A_LoginBean;
import com.polling.dao.PollDao;

/**
 * Servlet implementation class PollDeletion
 */
@WebServlet("/PollDeletion")
public class PollDeletion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		A_LoginBean bean = (A_LoginBean)session.getAttribute("userBean");
		if(bean !=  null) {
				int pollId = Integer.parseInt(request.getParameter("pollId"));
				boolean stsatus = PollDao.deletePoll(pollId);
				if (stsatus == true) {
					RequestDispatcher rsd = request.getRequestDispatcher("PollResult");
					rsd.forward(request, response);
				}
				else
					response.sendRedirect("PollDetails?PollId="+pollId+"");
			
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
