package com.kite.gz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//index Controller: 첫 화면을 보여주는 컨트롤러 클래스
@Controller
public class indexController {
	
	@RequestMapping("/")
	public String index() {
		
		return "index";
	}
}
