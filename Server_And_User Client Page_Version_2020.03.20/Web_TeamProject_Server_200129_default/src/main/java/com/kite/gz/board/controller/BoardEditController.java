package com.kite.gz.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.domain.BoardWriteRequestVo;
import com.kite.gz.board.service.BoardEditSerivce;
import com.kite.gz.board.service.BoardViewService;

//BoardEditController: 게임 게시글을 수정하는 컨트롤러
@Controller
@RequestMapping("/board/edit")
public class BoardEditController {

	//객체 주입
	@Autowired
	BoardViewService viewService;
	
	@Autowired
	BoardEditSerivce editService;

	
	//editForm 메서드: 수정하려는 게시글을 찾아서 해당 페이지를 보여주는 메서드
	@RequestMapping(method = RequestMethod.GET)
	public String editForm(@RequestParam(value = "idx", defaultValue = "-1") int idx, Model model) {

		model.addAttribute("boardEdit", viewService.getPostingidx(idx));

		return "board/editForm";
	
	}//editForm 메서드 끝

	
	//edit 메서드: 수정된 게시글을 보내고 수정된 상태의 페이지를 보여주는 메서드
	@RequestMapping(method = RequestMethod.POST)
	public String edit( BoardWriteRequestVo edit, Model model) {
		
		System.out.println(edit);
		
		int result = editService.editPosting(edit);
		
		model.addAttribute("result", result);
		
		System.out.println("결과: " + result );
		
		return "board/edit";
		
	}//edit 메서드 끝

}//BoardEditController 클래스 끝
