package com.polling.admin;

import java.io.IOException;
//import java.util.Date;
//import java.text.DateFormat;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.polling.dao.PollDao;

/**
 * Servlet implementation class Poll_creation
 */
@WebServlet("/Poll_creation")
public class Poll_creation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("userBean") !=  null) {
			String title=request.getParameter("title");
			String question= request.getParameter("question");
			String option1=request.getParameter("option1");
			String option2=request.getParameter("option2");
			String option3=request.getParameter("option3");
			String option4=request.getParameter("option4");
			boolean Status = PollDao.pollcreation(title, question, option1, option2, option3, option4);
			if(Status == true) {
				response.sendRedirect("Poll_Creation.jsp");
			}
			else
				response.sendRedirect("Poll_Creation.jsp");
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
