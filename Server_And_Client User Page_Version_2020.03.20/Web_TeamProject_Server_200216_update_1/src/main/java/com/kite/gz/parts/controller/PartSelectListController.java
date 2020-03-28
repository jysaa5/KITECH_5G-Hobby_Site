package com.kite.gz.parts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.parts.domain.PartSelectListView;
import com.kite.gz.parts.service.PartSelectListService;

@Controller
public class PartSelectListController {
	
	@Autowired
	PartSelectListService service;
	
	@RequestMapping("/part/selectlist")
	public String list( @RequestParam(value="page", defaultValue = "1") int page, Model model) {
		
		PartSelectListView view = service.getListView(page);
		
		System.out.println(view);
				
		model.addAttribute("selectlistView", view); 
		
		return "part/selectlist";
	}

}
