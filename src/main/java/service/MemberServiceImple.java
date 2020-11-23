package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.MemberDAO;
import vo.MemberVO;

@Service
public class MemberServiceImple implements MService{
	
	@Autowired 
	MemberDAO dao;
	
	@Override
	public int join(MemberVO vo) {
		return dao.join(vo);
	}//insert
	
	@Override
	public MemberVO selectOne(MemberVO vo) {
		return dao.selectOne(vo);
	}//selectOne
	
	@Override
	public int st_update(MemberVO vo) {
		return dao.st_update(vo);
	}//st_update
	
	@Override
	public List<MemberVO> selectList() {
		return dao.selectList();
	}//selectList
}
