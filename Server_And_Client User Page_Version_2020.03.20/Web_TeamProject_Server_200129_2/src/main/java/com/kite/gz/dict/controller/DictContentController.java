package com.kite.gz.dict.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/dictionary/dictContent")
public class DictContentController {

	@RequestMapping(method = RequestMethod.GET)
	public String searchFormContent(Model model) {
		
		return "dictionary/dictContentForm";	
		
	}//searchFormContent 메서드 끝
	
	@CrossOrigin
	@RequestMapping(method = RequestMethod.POST)
	public String getInfo(
			@RequestParam (value="method", defaultValue="word_info") String method,
			@RequestParam ("q") String keyword,
			Model model,
			HttpServletRequest req) throws UnsupportedEncodingException {
		
		RestTemplate restTemplate = new RestTemplate();
		String key = "7EDD1EDA2E0D739DA7565168C0C5262E";
		String dcodeKey = URLDecoder.decode(key, "utf-8");
		
		String url = "https://opendict.korean.go.kr/api/view"
				+ "?certkey_no=1209"
				+ "&key=" + dcodeKey
				+ "&target_type=view"
				+ "&method=" + method
				+ "&q=" + keyword;

		String result = restTemplate.getForObject(url, String.class);
		
		model.addAttribute("result2", result);
		
		return "dictionary/dictContent";		
	}
	
}