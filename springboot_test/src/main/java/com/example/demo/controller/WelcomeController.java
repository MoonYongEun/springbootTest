package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.IndexDTO;
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
	
	@RequestMapping("/select")
	public String select() {
		return "select";
	}
	
	@RequestMapping("/select2")
	public ModelAndView select2() {
		List<IndexDTO>list = indexService.selectList();
		
		ModelAndView  mav = new ModelAndView("jsonView");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping("/modify")
	public String modify() {
		return "modify";
	}
	
	@RequestMapping("/delete")
	public String delete() {
		return "delete";
	}
	
	
	
	@RequestMapping(value="/insert2" , method = RequestMethod.POST)
	public String insert2(@RequestParam Map<String,String>map) {
		indexService.insert(map);
		return "helloworld";
	}
	

}
