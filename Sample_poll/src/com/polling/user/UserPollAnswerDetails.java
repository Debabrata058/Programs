package com.polling.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.polling.bean.LoginBean;
import com.polling.bean.PollBean;
import com.polling.dao.PollDao;

/**
 * Servlet implementation class UserPollAnswerDetails
 */
@WebServlet("/UserPollAnswerDetails")
public class UserPollAnswerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginBean bean = (LoginBean)request.getSession().getAttribute("userBean");
		if(bean !=  null) {
			String email = bean.getEmail();
			int pollId = Integer.parseInt(request.getParameter("PollId"));
			PollBean pollDetails = PollDao.getPollDetailsByPollId(pollId);
			request.setAttribute("pollDetails", pollDetails);
			String answer = PollDao.getUserAnswerByPollId(pollId, email);
			request.setAttribute("answer", answer);
			RequestDispatcher rsd = request.getRequestDispatcher("UserPollAnswerDetails.jsp");
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
