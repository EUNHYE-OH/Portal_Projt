package com.portal.projt;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.MService;
import vo.MemberVO;

@Controller
public class Cont {

	//@Autowired MService service;
	
	
	
	
//	@RequestMapping(value = "/join")
//	public ModelAndView join(ModelAndView mv, MemberVO vo) {
//		System.out.println("여긴???");
//		if(service.join(vo)>0) {
//			System.out.println("여긴넘어오나" + vo);
//			System.out.println("가입성공");
//		}else {
//			System.out.println("실패");
//		}
//		mv.setViewName("home");
//		return mv;  
//	}//join
//
//	
//	@RequestMapping(value = "/mag_changeConfirm")
//	public ModelAndView mag_changeConfirm(ModelAndView mv) {
//		mv.setViewName("manager/mag_changeConfirm");
//		return mv;  
//	}//mag_changeConfirm
//	
//	@RequestMapping(value = "/mag_grade")
//	public ModelAndView mag_grade(ModelAndView mv) {
//		mv.setViewName("manager/mag_grade");
//		return mv;  
//	}//mag_grade
//	
//	@RequestMapping(value = "/mag_infoBasicUp")
//	public ModelAndView mag_infoBasic(ModelAndView mv) {
//		mv.setViewName("manager/mag_infoBasicUp");
//		return mv;  
//	}//mag_infoBasic
//	
//	
//	@RequestMapping(value = "/st_grade")
//	public ModelAndView st_grade(ModelAndView mv) {
//		mv.setViewName("student/st_grade");
//		return mv;  
//	}//st_grade
//	
//	
//	@RequestMapping(value = "/st_classList")
//	public ModelAndView st_classList(ModelAndView mv) {
//		
//		mv.setViewName("student/st_classList");
//		return mv;  
//	}//st_classList
//	
//	@RequestMapping(value = "/st_infoMain")
//	public ModelAndView st_infoMain(ModelAndView mv) {
//		
//		mv.setViewName("student/st_infoMain"); 
//		return mv;  
//	}//st_infoMain
//	
//	@RequestMapping(value = "/st_changeReq")
//	public ModelAndView st_changeReq(ModelAndView mv) {
//		
//		mv.setViewName("student/st_changeReq");
//		return mv; 
//	}//st_changeReq
//	
//	@RequestMapping(value = "/st_update")
//	public ModelAndView st_update(ModelAndView mv) {
//		
//		mv.setViewName("student/st_update");
//		return mv; 
//	}//st_update
//	
//	
//	@RequestMapping(value = "/layout")
//	public ModelAndView layout(ModelAndView mv) {
//		mv.setViewName("layout/layout");
//		//mv.setViewName("manager/mag_layout");
//		return mv; 
//	}//layout
//
//	@RequestMapping(value = "/joinf")
//	public ModelAndView joinf(ModelAndView mv) {
//		mv.setViewName("join/joinForm");
//		return mv;
//	}//joinf
//
//	@RequestMapping(value = "/qbinsert")
//	public ModelAndView qbinsertf(ModelAndView mv) {
//		mv.setViewName("board/qnaBoardInsert");
//		return mv;
//	}//qbinsert
//
//	@RequestMapping(value = "/qblist")
//	public ModelAndView qbinsert(ModelAndView mv) {
//		mv.setViewName("board/qnaBoardList");
//		return mv;
//	}//qblist
//
//	@RequestMapping(value = "/qbdetail")
//	public ModelAndView qbdetail(ModelAndView mv) {
//		mv.setViewName("board/qnaBoardDetail");
//		return mv;
//	}//qbdetail
//
//	@RequestMapping(value = "/nbinsert")
//	public ModelAndView nbinsertf(ModelAndView mv) {
//		mv.setViewName("board/noticeBoardInsert");
//		return mv;
//	}//nbinsert
//
//	@RequestMapping(value = "/nblist")
//	public ModelAndView nbinsert(ModelAndView mv) {
//		mv.setViewName("board/noticeBoardList");
//		return mv;
//	}//nblist
//
//	@RequestMapping(value = "/nbdetail")
//	public ModelAndView nbdetail(ModelAndView mv) {
//		mv.setViewName("board/noticeBoardDetail");
//		return mv;
//	}//nbdetail

}//class
