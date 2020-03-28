package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.service.BoardDeleteService;

@Controller
public class BoardDeleteController {

	@Autowired
	BoardDeleteService service;

	@RequestMapping("/board/delete")
	public String list(@RequestParam(value = "idx", defaultValue = "1") int idx, Model model) {

		System.out.println("삭제 컨트롤러 : idx =>" + idx);

		int result = service.deleteArticle(idx);

		model.addAttribute("result", result);

		return "board/delete";
	}

}
