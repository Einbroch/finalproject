package ariarose.team.project.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import ariarose.team.project.model.AccomDAO;
import ariarose.team.project.vo.AccomVO;

@Service
public class AccomService {
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	public AccomDAO accomMapper(){
		return sqlSession.getMapper(AccomDAO.class);		
	}
	
	public boolean registAccom(AccomVO vo){
		if(accomMapper().registAccom(vo)>0){
			return true;
		}
		return false;
	}
}
