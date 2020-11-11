package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.SubjectDAO;
import vo.SubjectVO;

@Service
public class SubjectServiceImple implements SbjService{

	@Autowired SubjectDAO dao;
	
	@Override
	public List<SubjectVO> sbjList(SubjectVO vo) {
		return dao.sbjList(vo);
	}
}
