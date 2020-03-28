package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.domain.BoardWriteRequest;
import com.kite.gz.board.service.BoardEditSerivce;
import com.kite.gz.board.service.BoardViewService;

//GuestEditController: 방명록(게시글)를 수정하도록 해당 방명록(게시글)을 가져오고 수정된 데이터를 전송하는 컨트롤러 클래스.
@Controller
@RequestMapping("/board/edit")
public class BoardEditController {

	@Autowired
	BoardViewService viewService;
	
	@Autowired
	BoardEditSerivce editService;

	
	//editForm 메서드: 수정하려는 방명록(게시글)을 찾아서 해당 페이지를 보여주는 메서드
	@RequestMapping(method = RequestMethod.GET)
	public String editForm(@RequestParam(value = "idx", defaultValue = "-1") int idx, Model model) {

		model.addAttribute("boardEdit", viewService.getArticle(idx));

		return "board/editForm";
	}

	//edit 메서드: 수정된 방명록(게시글)을 보내고 수정된 상태의 페이지를 보여주는 메서드
	@RequestMapping(method = RequestMethod.POST)
	public String edit(BoardWriteRequest request, Model model) {

		model.addAttribute("result", editService.editArticle(request));
		
		return "board/edit";
	}

}
