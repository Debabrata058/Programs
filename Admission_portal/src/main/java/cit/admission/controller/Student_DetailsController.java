package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Agent_operationsModel;
import cit.admission.Model.StudentRegisterModel;
import cit.admission.Services.Agent_operationsService;
import cit.admission.Services.Student_DetailsService;

@Controller
public class Student_DetailsController {
	
	@RequestMapping("/student_details")
	public ModelAndView student_details(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		List<StudentRegisterModel> stu_list = Student_DetailsService.studentDetails();
		mv.addObject("stuList",stu_list);
		mv.setViewName("Regd_studentDetails");
		
		return mv; 
	}
	
	
	@RequestMapping("/student_Details_Agent")
	public ModelAndView student_Details_Agent(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		List<Agent_operationsModel> agent_stu_details = Agent_operationsService.AgentRegd_StudentDetails();
		mv.addObject("agent_Stu_Details",agent_stu_details);
		mv.setViewName("StudentDetails_Agent");
		
		return mv;
	}
}
