package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

//전세자금대출
@CrossOrigin(origins = "*")
@Controller
public class RentHouseLoanProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/rentHouseLoanProductsSearch")
	public String getInfo() throws UnsupportedEncodingException {

		return "finance/rentHouseLoanProductsSearch";		
	}
	
}
