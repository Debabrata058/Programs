package com.polling.user;

import java.io.IOException;
import java.util.List;
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
 * Servlet implementation class PollList
 */
@WebServlet("/PollList")
public class PollList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginBean bean = (LoginBean)request.getSession().getAttribute("userBean");
		if(bean !=  null) {
			String email = bean.getEmail();
			List<PollBean> ActivatedPollList = PollDao.viewNotAnsweredPollList(email);
			request.setAttribute("ActivatedPollList", ActivatedPollList);
			List<PollBean> deActivatedPollList = PollDao.viewAnsweredPollList(email);
			request.setAttribute("deActivatedPollList", deActivatedPollList);
			
			RequestDispatcher rsd = request.getRequestDispatcher("WelcomeUser.jsp");
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
