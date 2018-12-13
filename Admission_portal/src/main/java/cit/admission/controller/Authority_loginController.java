package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Authority_loginModel;
import cit.admission.Services.Authority_loginService;

@Controller
public class Authority_loginController {
	
	@RequestMapping("/auth_login")
	public ModelAndView auth_login(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		
		String uid = req.getParameter("uid");
		String password = req.getParameter("password");
	
		Authority_loginModel alm = new Authority_loginModel();
		alm.setUid(uid);
		alm.setPassword(password);
		
		Authority_loginModel auth_model = Authority_loginService.authority_login(alm);
		req.setAttribute("auth_model",auth_model);
		
		if(auth_model.isStatus()==false) {
			mv.setViewName("Authority_login");
		}else {
			HttpSession session = req.getSession();           // session creation
			session.setAttribute("authUser", auth_model);
			mv.setViewName("AuthorityDashboard");
		}
		
		
		return mv;
	}
}
