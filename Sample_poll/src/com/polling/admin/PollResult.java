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

import com.polling.bean.PollBean;
import com.polling.dao.PollDao;

/**
 * Servlet implementation class PollResult
 */
@WebServlet("/PollResult")
public class PollResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userBean") !=  null) {
			List<PollBean> ActivatedPollList = PollDao.viewActivatedPollList();
			request.setAttribute("ActivatedPollList", ActivatedPollList);
			List<PollBean> DeactivatedPollList = PollDao.viewDeactivatedPollList();
			request.setAttribute("DeactivatedPollList", DeactivatedPollList);
			RequestDispatcher rsd = request.getRequestDispatcher("Poll_Result.jsp");
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
