package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Tellicaller_registerModel;
import cit.admission.Services.Tellicaller_DetailService;

@Controller
public class TellicallerDetailController {

	@RequestMapping("/tellicaller_details")
	public ModelAndView tellicaller_details(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		List <Tellicaller_registerModel> Telli_list = Tellicaller_DetailService.view_tellicaller();
		mv.addObject("TelliList",Telli_list);
		mv.setViewName("TellicallerDetails");
		
		return mv;
		
	}
}
