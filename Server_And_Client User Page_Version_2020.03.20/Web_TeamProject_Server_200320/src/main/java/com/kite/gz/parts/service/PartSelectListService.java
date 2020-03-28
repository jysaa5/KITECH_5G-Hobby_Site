package com.kite.gz.parts.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.parts.dao.PartDao;
import com.kite.gz.parts.domain.PartSelectRequest;
import com.kite.gz.parts.domain.PartSelectListView;

@Service
public class PartSelectListService {
	
	@Autowired
	private SqlSessionTemplate template;
	
	private PartDao dao;
	
	// 한 페이지 표현될 게시글의 개수
	private final int COUNT_PER_PAGE = 10;  
	
	public PartSelectListView getListView(int pageNo) {
		
		dao = template.getMapper(PartDao.class);
		
		// 시작 게시글의 위치 startRow
		int startRow = (pageNo-1)*COUNT_PER_PAGE;
		
		// 페이지 표현할 게시글의 리스트
		List<PartSelectRequest> list = dao.selectingList(startRow, COUNT_PER_PAGE);
				
		// 전체 게시글의 개수
		int totalArticleCount = dao.selectCount();
		
		PartSelectListView selectlistView = new PartSelectListView(
				list, 
				totalArticleCount, 
				pageNo, 
				startRow, 
				COUNT_PER_PAGE);
		
		return selectlistView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
