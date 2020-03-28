package com.kite.gz.parts.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.parts.dao.PartDao;
import com.kite.gz.parts.domain.PartWriteRequest;

@Service
public class PartWriteService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private PartDao dao;
		
	public int write(PartWriteRequest request) {
		
		dao = template.getMapper(PartDao.class);
		
		return dao.insertArticle(request);
	}
	
	
	
	
	

}
