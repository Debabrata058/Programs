package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Agent_registerModel;
import cit.admission.Services.Agent_registerService;

@Controller
public class Agent_registerController {
	
	@RequestMapping("/agent_register")
	public ModelAndView agent_register(HttpServletRequest req, HttpServletResponse rep) {
		ModelAndView mv = new ModelAndView();
		
		String agent_id = req.getParameter("agent_id");
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String university = req.getParameter("university");
		String designation = req.getParameter("designation");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String password = req.getParameter("password");
		
		Agent_registerModel agentModel = new Agent_registerModel();
		
		agentModel.setAgent_id(agent_id);
		agentModel.setFname(fname);
		agentModel.setLname(lname);
		agentModel.setUniversity(university);
		agentModel.setDesignation(designation);
		agentModel.setEmail(email);
		agentModel.setContact(contact);
		agentModel.setPassword(password);
		
		if(Agent_registerService.agentRegister(agentModel)) {
			String message= "Successfully Inserted";
			mv.addObject("result",message);
			mv.setViewName("AgentRegister");
		}else {
			mv.setViewName("AgentRegister");
			
		}	
		
		return mv;
	}
}
