package com.kite.gz.finance.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class RentHouseLoanProductsSearchController {

	@CrossOrigin
	@RequestMapping("/finance/rentHouseLoanProductsSearch")
	public String getInfo(Model model) throws UnsupportedEncodingException {
		
		RestTemplate restTemplate = new RestTemplate();
		String key = "7ca1f03b6f18f09837b676a3f0f2370c";
		String dcodeKey = URLDecoder.decode(key, "utf-8");
		
		String url = "http://finlife.fss.or.kr/finlifeapi/rentHouseLoanProductsSearch.xml"
				+ "?auth="+ dcodeKey
				+ "&topFinGrpNo=050000"
				+ "&pageNo=1";

		
		String result = restTemplate.getForObject(url, String.class);
		
		model.addAttribute("result5", result);

		return "finance/rentHouseLoanProductsSearch";		
	}
	
}
