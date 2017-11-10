package com.polling.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.PollBean;
import com.polling.dao.PollDao;

/**
 * Servlet implementation class UserPollDetails
 */
@WebServlet("/UserPollDetails")
public class UserPollDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userBean") !=  null) {
			int pollId = Integer.parseInt(request.getParameter("PollId"));
			PollBean pollDetails = PollDao.getPollDetailsByPollId(pollId);
			request.setAttribute("pollDetails", pollDetails);
			RequestDispatcher rsd = request.getRequestDispatcher("UserPollDetails.jsp");
			rsd.forward(request, response);
		}
		else
			response.sendRedirect("user_login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
