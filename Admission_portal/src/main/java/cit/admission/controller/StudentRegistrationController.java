package cit.admission.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cit.admission.Model.StudentRegisterModel;
import cit.admission.Services.StudentRegisterService;

@Controller
public class StudentRegistrationController {
	@RequestMapping("/studentRegister")
	public ModelAndView studentRegister(HttpServletRequest req, HttpServletResponse rep) {
		ModelAndView mv = new ModelAndView();
		  
		String uid = req.getParameter("uid");
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String alt_contact = req.getParameter("alt_contact");
		String school_name = req.getParameter("school");
		String board = req.getParameter("board");
		String mark10 = req.getParameter("mark10");
		String year10 = req.getParameter("year10");
		String college = req.getParameter("school12");
		String board12 = req.getParameter("board12");
		String mark12 = req.getParameter("mark12");
		String year12 = req.getParameter("year12");
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
		
		StudentRegisterModel srm =new StudentRegisterModel();
		srm.setUid(uid);
		srm.setFname(fname);
		srm.setLname(lname);
		srm.setEmail(email);
		srm.setContact(contact);
		srm.setAlt_contact(alt_contact);
		srm.setSchool_name(school_name);
		srm.setBoard(board);
		srm.setMark10(mark10);
		srm.setYear10(year10);
		srm.setCollege(college);
		srm.setBoard12(board12);
		srm.setMark12(mark12);
		srm.setYear12(year12);
		srm.setParent_fname(parent_fname);
		srm.setParent_lname(parent_lname);
		srm.setParent_contact(parent_contact);
		srm.setParent_email(parent_email);
		srm.setAt(at);
		srm.setPost(post);
		srm.setCity(city);
		srm.setDistrict(district);
		srm.setState(state);
		srm.setPin(pin);
		
		if(new StudentRegisterService().studentRegister(srm)) {
			mv.setViewName("Success_register");
		}else {
			mv.setViewName("student_registration");
		}
		
		
		return mv;
	}
}
