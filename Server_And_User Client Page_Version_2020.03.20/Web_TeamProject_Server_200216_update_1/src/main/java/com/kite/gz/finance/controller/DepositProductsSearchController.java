package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//정기예금
@CrossOrigin(origins = "*")
@Controller
public class DepositProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/depositProductsSearch")
	public String getInfo() throws UnsupportedEncodingException {
		

		return "finance/depositProductsSearch";		
	}
	
}
