package com.kite.gz.parts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.parts.service.PartDeleteAllService;

@Controller
public class PartDeleteAllUserController {
	
	@Autowired
	PartDeleteAllService service;
	
	@RequestMapping("/part/deleteAllUser")
	public String deleteAllUserPick(@RequestParam(value="idx", defaultValue = "1") int idx, Model model) {
		
		System.out.println("삭제 컨트롤러 : idx =>" + idx);
				
		int result = service.deleteAllUserPick(idx);
						
		model.addAttribute("result3", result); 
		
		return "part/deleteAllUser";
	}
}
