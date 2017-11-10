package com.polling.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.A_LoginBean;
import com.polling.dao.AdminEditDao;

/**
 * Servlet implementation class AdminEditProfile
 */
@WebServlet("/AdminEditProfile")
public class AdminEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		A_LoginBean bean = (A_LoginBean)session.getAttribute("userBean");
		if(bean !=  null) {
			String email=bean.getEmail();
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String contact=request.getParameter("contact");
			String password=request.getParameter("password");
			
			boolean status= AdminEditDao.AdminEdit(fname,lname,contact,password,email);
			if(status == true) {
				response.sendRedirect("AdminProfileUpdation");
			}else {
				response.sendRedirect("AdminProfileUpdation");
			}
			
		}else {
			response.sendRedirect("Authority_login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
