package com.kite.gz.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;

@Service
public class BoardDeleteService {

	@Autowired
	private SqlSessionTemplate template;

	private BoardDao dao;

	public int deleteArticle(int idx) {
		
		dao = template.getMapper(BoardDao.class);

		return dao.deleteBoard(idx);
	}

}