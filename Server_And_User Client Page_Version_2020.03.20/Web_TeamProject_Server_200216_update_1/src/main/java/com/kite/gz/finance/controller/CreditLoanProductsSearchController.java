package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//개인신용대출
@CrossOrigin(origins = "*")
@Controller
public class CreditLoanProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/creditLoanProductsSearch")
	public String getInfo() throws UnsupportedEncodingException {

		return "finance/creditLoanProductsSearch";		
	}
	
}

