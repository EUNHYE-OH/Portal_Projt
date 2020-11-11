package jdbcUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NS = "com.portal.memberMapper.";
	
	public int join(MemberVO vo) {
		return sqlSession.insert(NS + "join", vo);
	}//insert
	
	public MemberVO selectOne(MemberVO vo) {
		return sqlSession.selectOne(NS + "selectOne", vo);
	}//selectOne
	
	public int st_update(MemberVO vo) {
		return sqlSession.update(NS + "st_update", vo);
	}//st_update
}//class
