package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Agent_registerModel;
import cit.admission.Services.Agent_DetailsService;

@Controller
public class Agent_DetailsController {
	
	@RequestMapping("/agent_details")
	public ModelAndView agent_details(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		List<Agent_registerModel> agentlist= Agent_DetailsService.viewAgentList();
		mv.addObject("agentList",agentlist);
		mv.setViewName("Agent_details");
		
		return mv;
	}
}
