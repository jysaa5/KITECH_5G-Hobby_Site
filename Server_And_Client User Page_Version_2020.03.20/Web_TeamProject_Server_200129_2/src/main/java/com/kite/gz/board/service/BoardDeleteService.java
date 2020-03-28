package com.kite.gz.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;

//서비스 bean으로 등록하기 
//BoardDeleteService: 게시글을 삭제하는 sql문을 실행하는 서비스 클래스
@Service("deleteService")
public class BoardDeleteService {

	//객체 주입
	@Autowired
	private SqlSessionTemplate template;

	//인터페이스
	private BoardDao dao;

	//deletePosting 메서드: sql문에서 게시글을 삭제하는 기능을 한다.
	public int deletePosting(int idx) {
		
		dao = template.getMapper(BoardDao.class);

		return dao.deleteBoard(idx);
		
	}//deletePosting 메서드 끝

}//BoardDeleteService 클래스 끝