package com.polling.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.polling.bean.*;
import com.polling.dao.UserEditDao;

/**
 * Servlet implementation class UserEditProfile
 */
@WebServlet("/UserEditProfile")
public class UserEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		LoginBean bean = (LoginBean)session.getAttribute("userBean");
		if(bean !=  null) {
					String email=bean.getEmail();
					String fname=request.getParameter("fname");
					String lname=request.getParameter("lname");
					String town=request.getParameter("town");
					String district=request.getParameter("district");
					String phone=request.getParameter("phone");
					String password=request.getParameter("password");
					
					boolean status= UserEditDao.userEdit(fname,lname,town,district,phone,password,email);
					if(status == true) {
						response.sendRedirect("UserUpdationInitiate");
					}else {
						response.sendRedirect("UserUpdationInitiate");
					}
		}else {
			response.sendRedirect("user_login.jsp");
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
