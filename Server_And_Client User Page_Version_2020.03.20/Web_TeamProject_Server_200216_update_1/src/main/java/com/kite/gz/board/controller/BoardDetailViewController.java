package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.service.BoardDetailViewService;


//BoardDetailViewController: 게시글 리스트를 페이지 번호에 따라서 보여지게 하는 컨트롤러
@Controller
public class BoardDetailViewController {

	//객체 주입
	@Autowired
	BoardDetailViewService detailViewService;
	
	//list 메서드: 사용자가 페이지 번호를 눌렀을 때, 해당 페이지의 데이터가 보이게 하는 메서드
	@RequestMapping("/board/detailView")
	public String detailPostingView(@RequestParam(value = "idx", defaultValue = "-1") int idx, Model model) {
		
		model.addAttribute("detailView", detailViewService.getDetailPostingidx(idx));
		
		return "board/detailView";
		
	}//detailPostingView 메서드 끝
	
}//BoardDetailViewController 클래스 끝
