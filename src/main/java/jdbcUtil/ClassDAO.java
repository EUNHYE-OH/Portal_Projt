package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ClassVO;

@Repository
public class ClassDAO{

	@Autowired SqlSession sqlSession;
	
	private static final String NS = "com.portal.classMapper.";
	
	public int clInsert(ClassVO cvo) {
		return sqlSession.insert(NS+"clInsert",cvo);
	}//clInsert
	
	public ClassVO selectClass(ClassVO cvo) {
		return sqlSession.selectOne(NS+"selectClass", cvo);
	}
}
