package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.service.BoardDeleteService;

//BoardDeleteController: 게임 게시글을 삭제하는 컨트롤러
@Controller
public class BoardDeleteController {

	//객체 주입
	@Autowired
	BoardDeleteService deleteService;

	@RequestMapping("/board/delete")
	public String delete(@RequestParam(value = "idx", defaultValue = "1") int idx, Model model) {

		System.out.println("삭제 컨트롤러 : idx =>" + idx);

		int result = deleteService.deletePosting(idx);

		model.addAttribute("result", result);

		return "board/delete";
		
	}//delete 메서드 끝

}//BoardDeleteController 클래스 끝
