package service;

import java.util.List;

import vo.ClassVO;

public interface CService {

	int clInsert(ClassVO cvo);
	
	ClassVO selectClass(ClassVO cvo);
}
