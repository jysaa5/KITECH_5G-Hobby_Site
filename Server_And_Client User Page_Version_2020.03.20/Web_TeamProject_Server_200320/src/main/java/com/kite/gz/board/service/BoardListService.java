package com.kite.gz.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kite.gz.board.dao.BoardDao;
import com.kite.gz.board.domain.BoardEditVo;
import com.kite.gz.board.domain.BoardListViewVo;


//서비스 bean으로 등록하기 
//BoardListService: 게시글을 리스트를 출력하는 sql문을 실행하는 서비스 클래스
@Service("listService")
public class BoardListService {

	//객체 주입
	@Autowired
	private SqlSessionTemplate template;

	//인터페이스
	private BoardDao dao;

	// 한 페이지 표현될 게시글의 개수
	private final int COUNT_PER_PAGE = 10;

	//getListView 메서드: BoardListView 객체를 반환하는 메서드이다. 
	//페이지 번호를 받으면, 게시글 리스트에서 처음에 시작하는 위치 순서를 계산함.그래서 해당 페이지에 게시될 게시글의 처음 시작 번호와 게시글 수를 주어서 페이지당 일정한 게시글이 보이도록 하는 메서드이다.
	public BoardListViewVo getListView(int pageNo) {
		
		//dao를 쓸수 있도록 한다.
		dao = template.getMapper(BoardDao.class);
		
		//시작 게시글의 위치 startRow
		int startRow = (pageNo-1)*COUNT_PER_PAGE;
		
		//페이지 표현할 게시글의 리스트
		List<BoardEditVo> list = dao.selectBoardList(startRow, COUNT_PER_PAGE);
		
		//전체 게시글의 개수
		int totalArticleCount = dao.selectCount();
		
		//객체 생성 
		BoardListViewVo listView = new BoardListViewVo(list, totalArticleCount,  pageNo, startRow, COUNT_PER_PAGE);
		
		return listView;
	
	}//getListView 메서드 끝
	
	
	
	/*
	 * public List<BoardVo> getAllList(){
	 * 
	 * dao = template.getMapper(BoardDao.class);
	 * 
	 * List<BoardVo> list = dao.selectAllList();
	 * 
	 * return list;
	 * 
	 * }
	 */

}//BoardListService 클래스 끝
