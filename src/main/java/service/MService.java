package service;

import vo.MemberVO;

public interface MService {
	
	int join(MemberVO vo);
	
	MemberVO selectOne(MemberVO vo);
	
	int st_update(MemberVO vo);
}
