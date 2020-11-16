package service;

import java.util.List;

import vo.ClassVO;

public interface CService {

	int clInsert(ClassVO cvo);
	
	List<ClassVO> selectClass(ClassVO cvo);
	
	List<ClassVO> classList(ClassVO cvo);
	
}
