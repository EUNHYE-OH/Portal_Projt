package service;

import java.util.List;

import vo.MemberVO;

public interface MService {
	
	int join(MemberVO vo);
	
	MemberVO selectOne(MemberVO vo);
	
	int st_update(MemberVO vo);
	
	List<MemberVO> selectList();
}
