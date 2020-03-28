package com.kite.gz.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardEditVo;

//GuestViewService: 회원 정보에서 idx와 일치하는 회원 정보를 가져다주는 서비스 클래스 (조회 기능)
@Service
public class BoardViewService {

	@Autowired
	private SqlSessionTemplate template;

	//인터페이스 
	private BoardDao dao;
	
	//getArticle: 게시글 번호를 반으면 조회하여 찾아주는 메서드
	public BoardEditVo getArticle(int idx) {

		//인터페이스 구현, SQL문 실행
		dao = template.getMapper(BoardDao.class);
		
		return dao.selectBoardByIdx(idx);
	}

}
