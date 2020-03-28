package com.kite.gz.parts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kite.gz.parts.domain.PartWriteRequest;
import com.kite.gz.parts.service.PartWriteService;


@Controller
@RequestMapping("/part/write")
public class PartWriteController {
	@Autowired
	PartWriteService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public String writeForm() {
		return "part/writeForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String write(PartWriteRequest request) {
		
		System.out.println(request);
		
		System.out.println("요청 idx : " + request.getIdx()  );
		
		int result = service.write(request);
		
		System.out.println("결과 : " + result  );
		
		System.out.println("결과 idx : " + request.getIdx()  );
		
		return "part/write";
	}
}
