package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Agent_registerModel;
import cit.admission.Services.Agent_loginService;

@Controller
public class Agent_loginController {
	
	@RequestMapping("/agent_login")
	public ModelAndView agent_login(HttpServletRequest req, HttpServletResponse rep) {
		ModelAndView mv = new ModelAndView();
		
		String agent_id = req.getParameter("agent_id");
		String password = req.getParameter("password");
	
		Agent_registerModel arm = new Agent_registerModel();
		arm.setAgent_id(agent_id);
		arm.setPassword(password);
		
		Agent_registerModel agent_model = Agent_loginService.agent_login(arm);
		req.setAttribute("auth_model",agent_model);
		
		if(agent_model.isStatus()==false) {
			mv.setViewName("Agent_login");
		}else {
			HttpSession session = req.getSession();           // session creation
			session.setAttribute("authAgent", agent_model);
			mv.setViewName("AgentDashboard");
		}
		
		
		return mv;
	}
	@RequestMapping("/agentPasswordUpdate")
	public ModelAndView agentPasswordUpdate(HttpServletRequest req, HttpServletResponse rep) {
		ModelAndView mv = new ModelAndView();
		String new_password = req.getParameter("password");
		
		Agent_registerModel agentModel = new Agent_registerModel();
		agentModel.setPassword(new_password);
		
		HttpSession session = req.getSession();
		Agent_registerModel agent_regModel = (Agent_registerModel)session.getAttribute("authAgent");
		String agent_id = agent_regModel.getAgent_id();
		if(Agent_loginService.agent_passwordUpdate(agentModel,agent_id)) {
			String message = "Updated Successfully.";
			mv.addObject("result",message);
			mv.setViewName("AgentDashboard");
		}
		else {
			mv.setViewName("AgentDashboard");
		}
		
		return mv;
	}
}
