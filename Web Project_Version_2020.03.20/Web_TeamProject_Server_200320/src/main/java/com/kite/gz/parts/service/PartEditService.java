package com.kite.gz.parts.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.parts.dao.PartDao;
import com.kite.gz.parts.domain.PartWriteRequest;

@Service
public class PartEditService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private PartDao dao;
	
	public int editArticle(PartWriteRequest request) {
		
		dao = template.getMapper(PartDao.class);
		
		return 	dao.editArticle(request);
			
	}
	
}
