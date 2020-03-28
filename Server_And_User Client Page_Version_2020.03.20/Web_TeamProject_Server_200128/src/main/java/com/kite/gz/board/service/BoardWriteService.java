package com.kite.gz.board.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardWriteRequest;



//서비스 bean으로 등록하기 
@Service("writeService")
public class BoardWriteService {

	@Inject
	private SqlSessionTemplate template;
	
	//인터페이스
	private BoardDao dao;
	
	//write 메서드: 게시글을 작성하고 게시글 번호를 반환하는 메서드
	public int boardWrite(BoardWriteRequest request) {
	
		dao = template.getMapper(BoardDao.class);
		
		 return dao.insertBoard(request);
		
	}
	
}
