package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//주택담보대출
@CrossOrigin(origins = "*")
@Controller
public class MortgageLoanProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/mortgageLoanProductsSearch")
	public String getInfo() throws UnsupportedEncodingException {

		return "finance/mortgageLoanProductsSearch";		
	}
	
}
