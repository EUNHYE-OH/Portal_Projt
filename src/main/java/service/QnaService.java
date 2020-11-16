package service;

import java.util.List;

import criTest.SearchCriteria;
import vo.CommentVO;
import vo.PageVO;
import vo.QnaVO;

public interface QnaService {
	
	public List<CommentVO> clist(QnaVO vo);
	
	public int cqbInsert(CommentVO cvo);
	
	public int cqbDelete(CommentVO cvo);
	
	int searchRowCount(SearchCriteria cri);
	
	List<QnaVO> searchList(SearchCriteria cri);
	
	int totalRowCount();
	
	PageVO pageList(PageVO pvo);
	
	List<QnaVO> selectList();
	
	QnaVO selectOne(QnaVO vo);
	
	int qbInsert(QnaVO vo);
	
	int qbUpdate(QnaVO vo);
	
	int qbDelete(QnaVO vo);
	
	int countUp(QnaVO vo);
}
