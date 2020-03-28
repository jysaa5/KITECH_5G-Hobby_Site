package com.kite.gz.parts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kite.gz.parts.domain.PartWriteRequest;
import com.kite.gz.parts.service.PartEditService;
import com.kite.gz.parts.service.PartViewService;

@Controller
@RequestMapping("/part/edit")
public class PartEditController {
	
	@Autowired
	PartViewService viewService;
	
	@Autowired
	PartEditService editService;

	@RequestMapping(method = RequestMethod.GET)
	public String editForm( @RequestParam(value="idx", defaultValue = "-1") int idx, Model model) {
		
		model.addAttribute("article", viewService.getArticle(idx));
		
		return "part/editForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String edit(PartWriteRequest request, Model model) {
		
		model.addAttribute("result", editService.editArticle(request));
				
		return "part/edit";
	}
	

}
