package com.kite.gz.parts.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.parts.dao.PartDao;
import com.kite.gz.parts.domain.PartSelectRequest;

@Service
public class PartSelectService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private PartDao dao;
	
	public int selectingArticle(PartSelectRequest request) {
		
		dao = template.getMapper(PartDao.class);
		
		return 	dao.selectingArticle(request);
			
	}

	
	
	
	
	
	
	
	
}
