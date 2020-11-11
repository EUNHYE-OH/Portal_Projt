package com.portal.projt;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagerController {

	@RequestMapping(value = "/mag_infoBasicUp")
	public ModelAndView mag_infoBasicUp(ModelAndView mv) {
		mv.setViewName("manager/mag_infoBasicUp");
		return mv;
	}//mag_infoBasicUp
	
	@RequestMapping(value="/mag_newInsert")
	public ModelAndView mag_newInsert(ModelAndView mv) {
		mv.setViewName("manager/mag_newInsert");
	 return mv;
	}
}
