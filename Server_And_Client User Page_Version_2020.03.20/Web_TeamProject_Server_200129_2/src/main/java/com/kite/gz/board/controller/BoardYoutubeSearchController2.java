package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.domain.BoardYoutubeVo;
import com.kite.gz.board.service.BoardYoutubeSearchResultSaveService;


//BoardYoutubeSearchController: 유튜브 검색을 위한 컨트롤러
@Controller
@RequestMapping("/board/youtubeSearchAgain")
public class BoardYoutubeSearchController2 {
	
	//객체 주입
	@Autowired
	BoardYoutubeSearchResultSaveService youtubeSearchService;
	
	//youtubeSearchForm 메서드: 유튜브 검색을 하는 폼을 가져오는 메서드
	@RequestMapping(method = RequestMethod.GET)
	public String youtubeSearchForm(@RequestParam(value = "search", defaultValue = "null") String search, Model model) {
		model.addAttribute("searchAgain", search);
		return "board/youtubeSearchForm";
		
	}//youtubeSearchForm 메서드 끝
	

	    //youtubeSearch 메서드: 유튜브 검색어를 보내주는 메서드
		//커맨드형식 
		@RequestMapping(method = RequestMethod.POST)
		public String youtubeSearch(BoardYoutubeVo request) {
			
			System.out.println(request);
			System.out.println("요청 idx: " + request.getIdx() );
			
			int result = youtubeSearchService.boardYoutubeSearchSave(request);
			
			System.out.println("결과: " + result );
			System.out.println("결과 idx: " + request.getIdx());
			
			
			return "board/youtubeSearch";
			
		}//youtubeSearch 메서드 끝
	
}//BoardYoutubeSearchController 클래스 끝
