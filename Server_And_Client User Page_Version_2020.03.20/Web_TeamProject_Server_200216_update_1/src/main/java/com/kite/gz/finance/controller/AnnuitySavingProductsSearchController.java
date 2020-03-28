package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//연금저축
@CrossOrigin(origins = "*")
@Controller
public class AnnuitySavingProductsSearchController {
	
	@CrossOrigin(origins = "*")
	@RequestMapping("/finance/annuitySavingProductsSearch")
	public String getInfo() throws UnsupportedEncodingException {
		

		return "finance/annuitySavingProductsSearch";		
	}
	
}
