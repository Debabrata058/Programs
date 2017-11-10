package com.polling.admin;

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
 * Servlet implementation class PollDetails
 */
@WebServlet("/PollDetails")
public class PollDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userBean") !=  null) {
			String[] answers = new String[4];
			int pollId = Integer.parseInt(request.getParameter("PollId"));
			PollBean pollDetails = PollDao.getPollDetailsByPollId(pollId);
			answers[0] = pollDetails.getOption1();
			answers[1] = pollDetails.getOption2();
			answers[2] = pollDetails.getOption3();
			answers[3] = pollDetails.getOption4();
			float[] count = PollDao.getAnswerCount(answers,pollId);
			float totalVote = count[0] + count[1] + count[2] + count[3];
			count[0] = (count[0] / totalVote) * 100;
			count[1] = (count[1] / totalVote) * 100;
			count[2] = (count[2] / totalVote) * 100;
			count[3] = (count[3] / totalVote) * 100;
			request.setAttribute("percentage", count);
			request.setAttribute("pollDetails", pollDetails);
			RequestDispatcher rsd = request.getRequestDispatcher("PollDetails.jsp");
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
