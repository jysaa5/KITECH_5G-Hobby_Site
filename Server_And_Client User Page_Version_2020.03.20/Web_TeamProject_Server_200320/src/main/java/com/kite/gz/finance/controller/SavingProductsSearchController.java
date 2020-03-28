package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//적금
@CrossOrigin(origins = "*")
@Controller
public class SavingProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/savingProductsSearch")
	public String getInfo(Model model) throws UnsupportedEncodingException {

		return "finance/savingProductsSearch";		
	}
	
}
