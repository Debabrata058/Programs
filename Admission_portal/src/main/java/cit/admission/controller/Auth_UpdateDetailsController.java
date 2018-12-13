package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Auth_UpdateDetailsModel;
import cit.admission.Services.Auth_UpdateDetailsService;

@Controller
public class Auth_UpdateDetailsController {
	
	@RequestMapping("/Authority_update")
	public ModelAndView Authority_update(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String university = req.getParameter("university");
		String designation = req.getParameter("designation");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String password = req.getParameter("password");
		
		Auth_UpdateDetailsModel auth_update = new Auth_UpdateDetailsModel();
		
		auth_update.setFname(fname);
		auth_update.setLname(lname);
		auth_update.setUniversity(university);
		auth_update.setDesignation(designation);
		auth_update.setEmail(email);
		auth_update.setContact(contact);
		auth_update.setPassword(password);
		
		Auth_UpdateDetailsModel auth_Update=Auth_UpdateDetailsService.authUpdate(auth_update,req.getSession());
		if(auth_Update.isStatus()==true) {
			mv.setViewName("Auth_UpdateResult");
		}
		else {
			mv.setViewName("AuthorityDashboard");
		}
		
		return mv;
	}
}
