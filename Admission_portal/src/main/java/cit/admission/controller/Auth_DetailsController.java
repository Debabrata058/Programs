package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Auth_DetailsModel;
import cit.admission.Services.Auth_DetailsService;

@Controller
public class Auth_DetailsController {

	@RequestMapping("/authority_details")
	public ModelAndView authority_details(HttpServletRequest req,HttpServletResponse rep) {

		ModelAndView mv = new ModelAndView();
		List<Auth_DetailsModel> authlist= Auth_DetailsService.viewAuthList();
		mv.addObject("authList", authlist);
		mv.setViewName("Authority_details");
		
		return mv;
	}
		
}
