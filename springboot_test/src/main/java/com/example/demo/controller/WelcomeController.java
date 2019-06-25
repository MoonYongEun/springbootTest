package com.example.demo.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.IndexService;


@Controller
public class WelcomeController {
	@Autowired
	private IndexService indexService;

	@RequestMapping("/index")
	public String index() {
		return "helloworld";
	}
	
	@RequestMapping("/insert")
	public String insert() {
		return "insert";
	}
	
	@RequestMapping(value="/insert2" , method = RequestMethod.POST)
	public String insert2(@RequestParam Map<String,String>map) {
		indexService.insert(map);
		return "helloworld";
	}
	

}
