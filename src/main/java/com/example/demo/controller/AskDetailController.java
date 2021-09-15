package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.AskDetailDao;



@Controller

public class AskDetailController {

	@Autowired
	private AskDetailDao dao;

	public void setDao(AskDetailDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/detailAsk.do")
	public void detailAsk(int ask_no, Model model) {
		model.addAttribute("a", dao.getAskInfo(ask_no));	
		model.addAttribute("an", dao.getAnswer(ask_no));	
	}
	
	
	

}