package com.polling.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.polling.dao.PollDao;

/**
 * Servlet implementation class PollAnswer
 */
@WebServlet("/PollAnswer")
public class PollAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userBean") !=  null) {
			int pollId = Integer.parseInt(request.getParameter("pollId"));
			String email = request.getParameter("email");
			String answer = request.getParameter("option");
			boolean status = PollDao.submitAnswer(pollId, email, answer);
			
			if(status == true) {
				response.sendRedirect("PollList");
				
			}
			else
				response.getWriter().println("Un-Successfull");
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
