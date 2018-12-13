package cit.admission.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.Tellicaller_operationsModel;
import cit.admission.Model.Tellicaller_registerModel;
import cit.admission.Services.Tellicaller_operationsService;

@Controller
public class Tellicaller_operationsController {
	
	@RequestMapping("/tellicaller_Assign")
	public ModelAndView tellicaller_Assign(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		int first_slno = Integer.parseInt(req.getParameter("sl1_no"));
		String tell_id = req.getParameter("tell_id");
		
		Tellicaller_operationsModel tell_list = Tellicaller_operationsService.get_stu_details(first_slno);
		if(Tellicaller_operationsService.assign_tellicaller(tell_list,tell_id)) {
			String message = "Assigned Successfully";
			mv.addObject("result", message);
			mv.setViewName("Telli_Assignment");
		}
		
		
		return mv;
	}
	
	@RequestMapping("/Telli_AssignmentDetails")
	public ModelAndView Telli_AssignmentDetails(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		List<Tellicaller_operationsModel> telli_assign = Tellicaller_operationsService.get_telli_assignments();
		mv.addObject("telli_assign_detail",telli_assign);
		mv.setViewName("Telli_AssignDetails");
		
		return mv;
	}
	
	@RequestMapping("/tellicaller_login")
	public ModelAndView tellicaller_login(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		String tell_id = req.getParameter("tell_id");
		String password = req.getParameter("password");
		
		Tellicaller_registerModel trm = new Tellicaller_registerModel();
		trm.setTell_id(tell_id);
		trm.setPassword(password);
		
		Tellicaller_registerModel T_model = Tellicaller_operationsService.validate_tellicaller(trm);
		req.setAttribute("t_model",T_model);
		
		if(T_model.isStatus()==false) {
			mv.setViewName("Tellicaller_login");
		}else {
			HttpSession session = req.getSession();           // session creation
			session.setAttribute("authTellicaller", T_model);
			mv.setViewName("TellicallerDashboard");
		}
		
		return mv;
	}
	
	@RequestMapping("/tell_PasswordUpdate")
	public ModelAndView tell_PasswordUpdate(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		String password = req.getParameter("password");
		
		Tellicaller_registerModel trm = new Tellicaller_registerModel();
		trm.setPassword(password);
		
		HttpSession session = req.getSession();
		Tellicaller_registerModel tell_regModel = (Tellicaller_registerModel) session.getAttribute("authTellicaller");
		String tell_id = tell_regModel.getTell_id();
		
		if(Tellicaller_operationsService.Telli_passwordUpdate(trm,tell_id)) {
			String message = "Updated Successfully";
			mv.addObject("result",message);
			mv.setViewName("TellicallerDashboard");
		}
		else {
			mv.setViewName("TellicallerDashboard");
		}
		
		return mv;
	}
	
	@RequestMapping("/get_student_details")
	public ModelAndView get_student_details(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Tellicaller_operationsModel> telli_assign = Tellicaller_operationsService.get_telli_assignments();
		mv.addObject("telli_assign_detail",telli_assign);
		mv.setViewName("Telli_AssignDetails");
		
		return mv;
		
	}
	
	
	@RequestMapping("/telli_confirm")
	public ModelAndView telli_confirm(HttpServletRequest req, HttpServletResponse rep) {
		
		ModelAndView mv = new ModelAndView();
		int sl_no = Integer.parseInt(req.getParameter("sl_no"));
		String date = req.getParameter("date");
		String agree = req.getParameter("agree");
		
		Tellicaller_operationsModel tom = new Tellicaller_operationsModel();
		tom.setSid(sl_no);
		tom.setDate(date);
		tom.setAgree(agree);
		
		if(Tellicaller_operationsService.telli_Confirmation(tom)) {
			
			String message = "Thank You for Confirmation.";
			mv.addObject("result",message);
			mv.setViewName("Telli_confirm");
			
		}
		
		return mv;
		
	}

}
