package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.SubjectVO;

@Repository
public class SubjectDAO {

	@Autowired
	SqlSession sqlSession;
	
	private static final String NS = "com.portal.subjectMapper.";
	
	public List<SubjectVO> sbjList(SubjectVO vo){
		return sqlSession.selectList(NS + "sbjList", vo);
	}//selectList
}
