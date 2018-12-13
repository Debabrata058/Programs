package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Agent_operationsModel;
import cit.admission.Services.Agent_operationsService;

@Controller
public class Agent_operationsController {

	@RequestMapping("/student_registerAgent")
	public ModelAndView student_registerAgent(HttpServletRequest req, HttpServletResponse rep) {
		ModelAndView mv = new ModelAndView();
		
		String agent_id = req.getParameter("agent_id");
		String date = req.getParameter("date");
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String school = req.getParameter("school");
		String mark10 = req.getParameter("mark10");
		String college = req.getParameter("college");
		String mark12 = req.getParameter("mark12");
		String parent_fname = req.getParameter("pfname");
		String parent_lname = req.getParameter("plname");
		String parent_contact = req.getParameter("parent_contact");
		String parent_email = req.getParameter("parent_email");
		String at = req.getParameter("at");
		String post = req.getParameter("post");
		String city = req.getParameter("city");
		String district = req.getParameter("district");
		String state = req.getParameter("state");
		String pin = req.getParameter("pin");
		
		
		Agent_operationsModel aom = new Agent_operationsModel();
		aom.setAgent_id(agent_id);
		aom.setDate(date);
		aom.setFname(fname);
		aom.setLname(lname);
		aom.setEmail(email);
		aom.setContact(contact);
		aom.setSchool(school);
		aom.setMark10(mark10);
		aom.setCollege(college);
		aom.setMark12(mark12);
		aom.setParent_fname(parent_fname);
		aom.setParent_lname(parent_lname);
		aom.setParent_contact(parent_contact);
		aom.setParent_email(parent_email);
		aom.setAt(at);
		aom.setPost(post);
		aom.setCity(city);
		aom.setDistrict(district);
		aom.setState(state);
		aom.setPin(pin);
		
		if(Agent_operationsService.student_RegisterAgent(aom)) {
			String message = "Registered Successfully";
			mv.addObject("result",message);
			mv.setViewName("StudentRegd_Agent");
		}
		
		return mv;
		
	}
	
	@RequestMapping("/student_details_agent")
	public ModelAndView student_details_agent() {
		
		ModelAndView mv = new ModelAndView();
		List<Agent_operationsModel> agent_stu_details = Agent_operationsService.AgentRegd_StudentDetails();
		mv.addObject("agent_Stu_Details",agent_stu_details);
		mv.setViewName("StudentDetails_Agent");
		
		return mv;
	}
	
	@RequestMapping("/agent_payble_byAuth")
	public ModelAndView agent_payble_byAuth(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		String agent_id = req.getParameter("agent_id");
		String payble = req.getParameter("payble");
		
		Agent_operationsModel aom = new Agent_operationsModel();
		aom.setAgent_id(agent_id);
		aom.setPayble(payble);
		
		if(Agent_operationsService.agent_Payble_byAuth(aom)) {
			String message = "Agent Evaluated";
			mv.addObject("result",message);
			mv.setViewName("AgentStatus");
		}
		return mv;
	}
}
