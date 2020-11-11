package com.portal.projt;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
				mv.addObject("message", "등록되지 않은 아이디입니다.");
				mv.setViewName("home");
			} else {
				if(passwordEncoder.matches(password, vo.getPassword())) {
					HttpSession session = request.getSession();
					session.setAttribute("logID", id);
					session.setAttribute("logName", vo.getName());
					session.setAttribute("logPW", password);
					if ("admin".equals(id)) mv.setViewName("manager/mag_layout");
					else mv.setViewName("layout/layout");
				} else {
					mv.addObject("message", "등록되지 않은 비밀번호입니다.");
					mv.setViewName("home");
				} // Password 비교
			} // selectOne 성공여부
		} else { // 입력값 check
			mv.addObject("message", "아이디/비밀번호를 입력해주세요.");
			mv.setViewName("home");
		}

		return mv;
	}// login

	@RequestMapping(value = "/st_updatef")
	public ModelAndView st_updatef(ModelAndView mv) {

		mv.setViewName("student/st_update");
		return mv;
	}// st_updatef

	@RequestMapping(value = "/st_update")
	public ModelAndView st_update(ModelAndView mv, MemberVO vo) {
		if (service.st_update(vo) > 0) {
			mv.addObject("message", "수정 완료되었습니다.");
			mv.setViewName("layout/layout");
		} else {
			mv.addObject("message", "다시 시도해주세요.");
			mv.setViewName("layout/layout");
		}
		return mv;
	}// st_update

	@RequestMapping(value = "/st_grade")
	public ModelAndView st_grade(ModelAndView mv) {
		mv.setViewName("student/st_grade");
		return mv;
	}// st_grade

	@RequestMapping(value = "/st_classf")
	public ModelAndView st_classf(ModelAndView mv, SubjectVO vo) {
		List<SubjectVO> sbjList = sbjService.sbjList(vo);
		mv.addObject("sbjList", sbjList);

		mv.setViewName("student/st_class");
		return mv;
	}// st_classf

	@RequestMapping(value = "/st_class")
	public ModelAndView st_class(ModelAndView mv, ClassVO cvo) {
		System.out.println(cvo);
		int cnt = cService.clInsert(cvo);
		if (cnt > 0) {
			System.out.println("몇개" + cnt);
			ClassVO clList = cService.selectClass(cvo);
			mv.addObject("clList", clList);
		} else {
			System.out.println("실패");
		}
		mv.setViewName("student/st_classList");
		return mv;
	}// st_classf

	@RequestMapping(value = "/st_classList")
	public ModelAndView st_classList(ModelAndView mv) {
		int y = Calendar.getInstance().get(Calendar.YEAR);
		mv.addObject("y", y);
		mv.setViewName("student/st_classList");
		return mv;
	}// st_classList

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
