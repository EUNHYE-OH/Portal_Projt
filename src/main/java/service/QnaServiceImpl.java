package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import criTest.SearchCriteria;
import jdbcUtil.QnaDAO;
import vo.CommentVO;
import vo.PageVO;
import vo.QnaVO;

@Service
public class QnaServiceImpl implements QnaService{
	   @Autowired
	   QnaDAO qdao ;
	   
	   
	   @Override
	   public List<CommentVO> clist(QnaVO vo){
		   return qdao.clist(vo);
	   }
	   
	   @Override
	   public int cqbInsert(CommentVO cvo) {
		   return qdao.cqbInsert(cvo);
	   }
	   
	   @Override
	   public int cqbDelete(CommentVO cvo) {
		   return qdao.cqbDelete(cvo);
	   }
	   
	   @Override
	   public int searchRowCount(SearchCriteria cri) {
		   return qdao.searchRowCount(cri);
	   }
	   
	   @Override
	   public List<QnaVO> searchList(SearchCriteria cri){
		   return qdao.searchList(cri);
	   }
	   
	   @Override
	   public int totalRowCount() {
		   return qdao.totalRowCount();
	   }
	   
	   @Override
	   public PageVO pageList(PageVO pvo) {
		   return qdao.pageList(pvo);
	   }
	   
	   @Override
	   public List<QnaVO> selectList() {
	      return qdao.selectList();
	   }
	   
	   @Override
	   public QnaVO selectOne(QnaVO vo) {
	      return qdao.selectOne(vo);
	   }
	   
	   @Override
	   public int qbInsert(QnaVO vo) {
		   return qdao.qbInsert(vo);
	   }
	   
	   @Override
	   public int qbUpdate(QnaVO vo) {
		   return qdao.qbUpdate(vo);
	   }

	   @Override
	   public int qbDelete(QnaVO vo) {
	      return qdao.qbDelete(vo);
	   }
	   
	   @Override
	   public int countUp(QnaVO vo) {
		   return qdao.countUp(vo);
	   }
	   
}//QnaServiceImpl
