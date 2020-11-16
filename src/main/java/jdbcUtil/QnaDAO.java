package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import criTest.SearchCriteria;
import vo.CommentVO;
import vo.PageVO;
import vo.QnaVO;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String QB = "com.portal.QnaMapper.";
	
	
	public List<CommentVO> clist(QnaVO vo){
		return sqlSession.selectList(QB+"clist",vo);
	}
	
	public int cqbInsert(CommentVO cvo) {
		return sqlSession.insert(QB+"cqbInsert",cvo);
	}
	
	public int cqbDelete(CommentVO cvo) {
		return sqlSession.delete(QB+"cqbDelete",cvo);
	}
	
	public int searchRowCount(SearchCriteria cri) {
		return sqlSession.selectOne(QB+"searchRowCount",cri);
	} // searchRowCount
	
	public List<QnaVO> searchList(SearchCriteria cri) {
		return sqlSession.selectList(QB+"searchList",cri);
	} // searchList
		
	public int totalRowCount() {
		return sqlSession.selectOne(QB+"totalRowCount");
	} // totalRowCount
	
	public PageVO pageList(PageVO pvo) {
		pvo.setTotalCount(totalRowCount());
		pvo.setQblist(sqlSession.selectList(QB+"pageList",pvo));
		return pvo;
	} // pageList
	
	public List<QnaVO> selectList() {
		return sqlSession.selectList(QB+"selectList");
	} // selectList

	public QnaVO selectOne(QnaVO vo) {
		return sqlSession.selectOne(QB+"selectOne",vo);
	} // selectOne
		
	public int qbInsert(QnaVO vo) {
		return sqlSession.insert(QB+"qbInsert",vo);
	}//qbinsert
	
	public int qbUpdate(QnaVO vo) {
		return sqlSession.update(QB+"qbUpdate",vo);
	}//qbupdate
	
	public int qbDelete(QnaVO vo) {
		return sqlSession.delete(QB+"qbDelete",vo);
	}//qbdelete
	
	public int countUp(QnaVO vo) {
		return sqlSession.update(QB+"countUp",vo);
	}//countUp

}//QnaDAO
