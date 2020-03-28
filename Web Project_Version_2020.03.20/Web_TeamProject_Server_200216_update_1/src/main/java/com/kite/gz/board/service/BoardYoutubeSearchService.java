package com.kite.gz.board.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardYoutubeVo;

//BoardYoutubeSearchService: 유튜브 검색 결과를 가져오는 서비스 클래스
@Service("youtubeSearchService")
public class BoardYoutubeSearchService {

	//객체 주입
	@Inject
	private SqlSessionTemplate template;
	
	//인터페이스
	private BoardDao dao;
	
	//boardYoutubeSearchSave 메서드: 유튜브 검색 결과인 동영상의 제목을 저장하는 기능
	public int boardYoutubeSearchSave(BoardYoutubeVo request) {
	
		dao = template.getMapper(BoardDao.class);
		
		 return dao.searchTitleSave(request);
		
	}//boardYoutubeSearchSave 메서드 끝
	
}//BoardYoutubeSearchService 클래스 끝
