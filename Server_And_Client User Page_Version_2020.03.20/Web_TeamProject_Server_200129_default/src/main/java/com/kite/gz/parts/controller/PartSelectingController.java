package com.kite.gz.parts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.parts.domain.PartSelectRequest;
import com.kite.gz.parts.service.PartSelectService;
import com.kite.gz.parts.service.PartViewService;

@Controller
@RequestMapping("/part/select")
public class PartSelectingController {
	
	@Autowired
	PartViewService viewService;
	
	@Autowired
	PartSelectService selectingService;

	@RequestMapping(method = RequestMethod.GET)
	public String editForm(
			@RequestParam(value="idx", defaultValue = "-1") int idx,
			Model model
			) {
		
		model.addAttribute("article", viewService.getArticle(idx));
		
		return "part/select";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String selecting(PartSelectRequest request, Model model) {
		
		model.addAttribute("result", selectingService.selectingArticle(request));
				
		return "part/selectingcom";
	}
	
}
