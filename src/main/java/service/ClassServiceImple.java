package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jdbcUtil.ClassDAO;
import jdbcUtil.SubjectDAO;
import vo.ClassVO;

@Service
public class ClassServiceImple implements CService{

	@Autowired ClassDAO dao;
	@Autowired SubjectDAO sdao;
	
	public int clInsert(ClassVO cvo) {
		return dao.clInsert(cvo);
	};//clInsert
	
	@Override
	public List<ClassVO> selectClass(ClassVO cvo) {
		return dao.selectClass(cvo);
	}//selectClass
	
	@Override
	public List<ClassVO> classList(ClassVO cvo) {
		return dao.classList(cvo);
	}//classList
	
	@Override
	public int deleteClass(ClassVO cvo) {
		return dao.deleteClass(cvo);
	}//deleteClass
}
