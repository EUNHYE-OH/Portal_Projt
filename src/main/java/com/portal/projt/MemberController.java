package com.portal.projt;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.CService;
import service.MService;
import service.SbjService;
import vo.ClassVO;
import vo.MemberVO;
import vo.SubjectVO;

@Controller
public class MemberController {

	@Autowired
	MService service;
	@Autowired
	SbjService sbjService;
	@Autowired
	CService cService;
	@Autowired
	PasswordEncoder passwordEncoder;

	@RequestMapping(value = "/login")
	public ModelAndView login(ModelAndView mv, MemberVO vo, HttpServletRequest request) {
		String id = vo.getStudentid();
		String password = vo.getPassword();
		
		if (id.length() > 0 && password.length() > 0) {
			vo = service.selectOne(vo);
			if (vo == null) {
				mv.setViewName("home");
				mv.addObject("message", "등록되지 않은 아이디입니다.");
			} else {
				if(passwordEncoder.matches(password, vo.getPassword())) {
					HttpSession session = request.getSession();
					session.setAttribute("logID", id);
					session.setAttribute("logName", vo.getName());
					session.setAttribute("logPW", password);
					if ("admin".equals(id)) mv.setViewName("manager/mag_layout");
					else mv.setViewName("layout/layout");
				} else {
					mv.setViewName("home");
					mv.addObject("message", "등록되지 않은 비밀번호입니다.");
				} // Password 비교
			} // selectOne 성공여부
		} else { // 입력값 check
			mv.setViewName("home");
			mv.addObject("message", "아이디/비밀번호를 입력해주세요.");
		}
		return mv;
	}// login
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(ModelAndView mv, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if((session != null) && (session.getAttribute("logID"))!=null) {
			session.invalidate();
			mv.setViewName("redirect:home");
		}else {
			mv.addObject("message","서버 에러");
		}
		return mv;
	}
	

	@RequestMapping(value = "/st_updatef")
	public ModelAndView st_updatef(ModelAndView mv) {
		mv.setViewName("student/st_update");
		return mv;
	}// st_updatef

	@RequestMapping(value = "/st_update")
	public ModelAndView st_update(ModelAndView mv, MemberVO vo) {
		vo.setPassword(passwordEncoder.encode(vo.getPassword()));
		if (service.st_update(vo) > 0) {
			mv.addObject("message", "수정 완료되었습니다.");
		}else {
			mv.addObject("message", "다시 시도해주세요.");
		}
		mv.setViewName("redirect:st_updatef");
		return mv;
	}// st_update

	@RequestMapping(value = "/st_grade")
	public ModelAndView st_grade(ModelAndView mv) {
		mv.setViewName("student/st_grade");
		return mv;
	}// st_grade

	@RequestMapping(value = "/st_classf")
	public ModelAndView st_classf(ModelAndView mv, SubjectVO vo) {
		int y = Calendar.getInstance().get(Calendar.YEAR);
		mv.addObject("y", y);
		List<SubjectVO> sbjList = sbjService.sbjList(vo);
		mv.addObject("sbjList", sbjList);
		mv.setViewName("student/st_class");
		return mv;
	}// st_classf

	@RequestMapping(value = "/st_class")
	public ModelAndView st_class(ModelAndView mv, ClassVO cvo) throws SQLIntegrityConstraintViolationException{
		int y = Calendar.getInstance().get(Calendar.YEAR);
		mv.addObject("y", y);
		try {
			if(cvo.getSubjectids()!= null && cvo.getSubjectids().length>0) {
				if (cService.clInsert(cvo) > 0) {
					List<ClassVO> clList = cService.classList(cvo);
					mv.addObject("clList", clList);
					mv.setViewName("student/st_classReq");
				} 
				}else {
					mv.addObject("fCode","F");
					mv.addObject("message","선택한 과목이 없습니다.");
					mv.setViewName("student/doFinish");
				}
		} catch (Exception e) {
			System.out.println("에러" + e.toString());
			mv.addObject("fCode","F");
			mv.addObject("message","이미 선택한 과목이 있습니다.");
			mv.setViewName("student/doFinish");
		}
		return mv;
	}// st_class

	@RequestMapping(value = "/st_classListf")
	public ModelAndView st_classListf(ModelAndView mv, ClassVO cvo) {
		int y = Calendar.getInstance().get(Calendar.YEAR);
		mv.addObject("y", y);
		mv.setViewName("student/st_classList");
		return mv;
	}// st_classList
	
	@RequestMapping(value = "/st_classList")
	public ModelAndView st_classList(ModelAndView mv, ClassVO cvo) {
		int y = Calendar.getInstance().get(Calendar.YEAR);
		mv.addObject("y", y);
		List<ClassVO> clList = cService.classList(cvo);
		System.out.println(clList);
		if(clList.size() > 0) {
			mv.addObject("clList",clList);
			mv.setViewName("student/st_classList");
		}else {
			mv.addObject("fCode","F");
			mv.addObject("message","수강신청 내역이 없습니다.");
			mv.setViewName("student/doFinish");
		}
		return mv;
	}// st_classList
	
	@RequestMapping(value = "/st_classDel")
	public ModelAndView st_classDel(ModelAndView mv, ClassVO cvo) {
		int cnt = cService.deleteClass(cvo);
		if(cnt>0) {
			mv.addObject("message","해당 강의가 삭제되었습니다.");
			mv.addObject("fCode","S");
		}else {
			System.out.println("nono" + cnt);
			mv.addObject("fCode","F");
		}
		mv.setViewName("student/doFinish");
		return mv;
	}// st_classDel

	@RequestMapping(value = "/st_infoMain")
	public ModelAndView st_infoMain(ModelAndView mv) {

		mv.setViewName("student/st_infoMain");
		return mv;
	}// st_infoMain

	@RequestMapping(value = "/st_changeReq")
	public ModelAndView st_changeReq(ModelAndView mv) {

		mv.setViewName("student/st_changeReq");
		return mv;
	}// st_changeReq

}// class
