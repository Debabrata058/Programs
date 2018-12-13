package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Tellicaller_registerModel;
import cit.admission.Services.Tellicaller_registerService;

@Controller
public class Tellicaller_registerController {
		@RequestMapping("/tellicaller_register")
		public ModelAndView tellicaller_register(HttpServletRequest req, HttpServletResponse rep) {
			ModelAndView mv = new ModelAndView();
			
			String tell_id = req.getParameter("tell_id");
			String fname = req.getParameter("fname");
			String lname = req.getParameter("lname");
			String university = req.getParameter("university");
			String designation = req.getParameter("designation");
			String email = req.getParameter("email");
			String contact = req.getParameter("contact");
			String password = req.getParameter("password");
			
			Tellicaller_registerModel t_model =new Tellicaller_registerModel();
			
			t_model.setTell_id(tell_id);
			t_model.setFname(fname);
			t_model.setLname(lname);
			t_model.setUniversity(university);
			t_model.setDesignation(designation);
			t_model.setEmail(email);
			t_model.setContact(contact);
			t_model.setPassword(password);
			
			if(Tellicaller_registerService.tellicaller_register(t_model)) {
				String success="Inserted Successfully";
				mv.addObject("message",success);
				mv.setViewName("TellicallerRegister");
			}else {
				mv.setViewName("TellicallerRegister");
			}
			
			
			return mv;
		}
}
