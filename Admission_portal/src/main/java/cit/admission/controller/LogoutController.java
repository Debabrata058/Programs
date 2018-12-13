package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LogoutController {
	
	@RequestMapping("/auth_logout")
	public ModelAndView auth_logout(HttpServletRequest req, HttpServletResponse rep) {
	
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		session.removeAttribute("authUser");
		session.invalidate();
		mv.setViewName("Authority_login");
		
		return mv;
	}
	
	@RequestMapping("/agent_logout")
	public ModelAndView agent_logout(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		session.removeAttribute("authAgent");
		session.invalidate();
		mv.setViewName("Agent_login");
		
		return mv;
		
	}
	
	@RequestMapping("/telli_logout") 
	public ModelAndView telli_logout(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = req.getSession();
		session.removeAttribute("authTellicaller");
		session.invalidate();
		mv.setViewName("Tellicaller_login");
			
		return mv;

	}
}
