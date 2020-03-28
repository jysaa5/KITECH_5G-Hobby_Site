package com.kite.gz.parts.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.parts.dao.PartDao;
import com.kite.gz.parts.domain.PartVo;

@Service
public class PartViewService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private PartDao dao;
	
	public PartVo getArticle(int idx) {
		
		dao = template.getMapper(PartDao.class);
		
		return dao.selectpartByIdx(idx) ;
		
	}

}
