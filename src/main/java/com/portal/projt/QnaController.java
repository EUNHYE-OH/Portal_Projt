package com.portal.projt;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import criTest.SearchCriteria;
import service.QnaService;
import vo.CommentVO;
import vo.PageVO;
import vo.QnaVO;

@Controller
public class QnaController {
	
	@Autowired
	QnaService service;
	
	
	@RequestMapping(value="/cqbinsert")
	public ModelAndView cqbinsert(ModelAndView mv, QnaVO vo, CommentVO cvo) {
		service.cqbInsert(cvo);
		mv.setViewName("redirect:/qbdetail?seq=" + cvo.getSeq());
		return mv;
	}
	
	@RequestMapping(value="/cqbdelete")
	public ModelAndView cqbdelete(ModelAndView mv, QnaVO vo, CommentVO cvo) {
		service.cqbDelete(cvo);
		mv.setViewName("redirect:/qbdetail?seq=" + cvo.getSeq());
		return mv;
	}
	
	@RequestMapping(value="/pqblist") //pageQnaBoardList
	public ModelAndView pqblist(ModelAndView mv, PageVO pvo, SearchCriteria cri) {
		int viewPage = 1;
		if(pvo.getViewPage() > 1)
			viewPage = pvo.getViewPage();
		else
			pvo.setViewPage(viewPage);
		int sno = (viewPage - 1) * pvo.getListPage() + 1;
		int eno = sno + pvo.getListPage() -1;
		pvo.setSno(sno);
		pvo.setEno(eno);
		
		// 2줄 Search 기능 구현
		mv.addObject("qblist", service.searchList(pvo));
		pvo.setTotalCount(service.searchRowCount(pvo));
		
		int totalPageNo = pvo.getTotalCount() / pvo.getListPage();
		if (pvo.getTotalCount() % pvo.getListPage() > 0)
			totalPageNo += 1;
		int startPageNo = ((viewPage - 1) / pvo.getListPageNo()) * pvo.getListPageNo() + 1;
		int endPageNo = startPageNo + pvo.getListPageNo() - 1;
		if (endPageNo > totalPageNo)
			endPageNo = totalPageNo;
		
		mv.addObject("startPageNo",startPageNo);
		mv.addObject("endPageNo",endPageNo);
		mv.addObject("listPageNo",pvo.getListPageNo());
		mv.addObject("totalPageNo",totalPageNo);
		mv.addObject("viewPage",viewPage);
		if (pvo.getQblist() != null) {
			mv.addObject("qblist",pvo.getQblist());
		}else {
			mv.addObject("message","출력할자료가 없습니다.");}
		mv.setViewName("board/qnaBoardList");
		return mv;
	}
	
	@RequestMapping(value="/qblist")
	public ModelAndView qblist(HttpServletResponse response,HttpServletRequest request,ModelAndView mv) {
		if(request.getParameter("message") != null)
			mv.addObject("message",request.getParameter("message"));
		List<QnaVO> list = new ArrayList<QnaVO>();
		list = service.selectList();
		if(list != null)
			mv.addObject("qblist",list);
		else
			mv.addObject("message","출력할 자료 없음");
		mv.setViewName("board/qnaBoardList");
		return mv;
	}
	
	@RequestMapping(value="/qbinsertf") 
	public ModelAndView qbinsertf(ModelAndView mv) {
		mv.setViewName("board/qnaBoardInsert");
		return mv;
	}
	
	@RequestMapping(value="/qbinsert") 
	public ModelAndView qbinsert(ModelAndView mv,QnaVO vo) {
		if(service.qbInsert(vo)>0) {
			mv.addObject("message","문의 등록 성공");
			mv.setViewName("redirect:pqblist");
		}else {
			mv.addObject("message","문의 등록 실패");
			mv.setViewName("board/qnaBoardList");
		}
		return mv;
	}
	
	@RequestMapping(value="/qbdetail") 
	public ModelAndView qbdetail(HttpServletRequest request,ModelAndView mv,QnaVO vo,CommentVO cvo) {
		//String logID;
		//HttpSession session = request.getSession(false);
		//if(session != null && session.getAttribute("logID") != null) {
		//	logID = (String)session.getAttribute("logID");
		//	if(!logID.equals(vo.getStudentId())) service.countUp(vo);
		//}else { //logID == null
		//	mv.addObject("message","서비스 이용불가");
		//	mv.setViewName("redirect:qblist");
		//}
		
		vo = service.selectOne(vo);
		if(vo != null) {
			mv.addObject("Detail",vo);
			if ("U".equals(request.getParameter("code"))) {
				mv.setViewName("board/qnaBoardUpdate");
			}else {
				mv.setViewName("board/qnaBoardDetail");
			}
		}else {
			mv.addObject("message","출력할 자료가 없습니다.");
			mv.setViewName("redirect:pqblist");
		}
		mv.addObject("cment", service.clist(vo));
		return mv;
	}
	
	@RequestMapping(value="/qbupdate") 
	public ModelAndView qbupdate(ModelAndView mv,QnaVO vo) {
		if(service.qbUpdate(vo) > 0) {
			mv.addObject("message","게시글 수정 성공");
			mv.setViewName("redirect:pqblist");
		}else {
			mv.addObject("message","게시글 수정 실패");
			mv.addObject("board/qnaBoardList");
		}
		return mv;
	}
	
	@RequestMapping(value="/qbdelete") 
	public ModelAndView qbdelete(ModelAndView mv,QnaVO vo) {
		int count = service.qbDelete(vo);
		System.out.println("qbDelete 갯수"+count);
		if(count>0) {
			mv.addObject("message","게시글 삭제 성공");
			mv.setViewName("redirect:pqblist");
		}else {
			mv.addObject("message","게시글 삭제 실패");
			mv.setViewName("board/qnaBoardList");
		}
		return mv;
	}
	
}//QnaController
