package com.kite.gz.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.board.domain.BoardPasswordVo;
import com.kite.gz.board.service.BoardPwCheckService;

//BoardPasswordCheckController: 게시글의 비밀번호를 체크하는 컨트롤러
@Controller
@RequestMapping("/board/passwordCheck")
public class BoardPasswordCheckController {
	
	//객체 주입
	@Autowired
	BoardPwCheckService pwCheckService;
	

	//pwCheckForm 메서드: 비밀번호 체크를 하는 폼을 불러오는 메서드
	//get방식으로 들어왔을 때 처리
	@RequestMapping(method = RequestMethod.GET)
	public String pwCheckForm(@RequestParam(value = "idx", defaultValue = "-1") int idx, Model model) {
	
		model.addAttribute("Checkidx", pwCheckService.getPostingidx(idx));
		
		return "board/passwordCheckForm";
		
	}//pwCheckForm 메서드 끝
	
	
	//pwCheck 메서드: 비밀번호를 체크하는 메서드
	//커맨드형식 
	@RequestMapping(method = RequestMethod.POST)
	public String pwCheck(BoardPasswordVo request, Model model) {
		
		boolean result = pwCheckService.passwordCheck(request);
		String pwCheckView = null;
		
		model.addAttribute("pwChk", result);
		if(result) 
		{
			System.out.println("비밀번호가 맞습니다.");
			model.addAttribute("pwCheck", request);
			pwCheckView = "board/passwordCheck";
			
		}else {
			
			System.out.println("비밀번호가 정확하지 않습니다.");
			pwCheckView = "board/passwordCheckForm";
			
		}
	
		return pwCheckView;
		
	}//pwCheck 메서드 끝
	
}//BoardPasswordCheckController 클래스 끝
