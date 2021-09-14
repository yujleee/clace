package com.example.demo.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CreatorDao;
import com.example.demo.dao.LectureDao;
import com.example.demo.dao.LectureDetailDao;
import com.example.demo.vo.CategoryVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.db.MyPageManager;

import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;

@Controller
public class CreatorController {

	@Autowired
	private CreatorDao dao;
	private LectureDetailDao daoL;

	public void setDao(CreatorDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/insertLecture.do")
	public void insertLecture(int mem_no, Model model) {
		model.addAttribute("c", dao.getCreatorInfo(mem_no));
		model.addAttribute("categoryList", dao.listCategory());
		model.addAttribute("jobList", dao.listJob());
		model.addAttribute("ageList", dao.listAge());
		
	}
	
	@RequestMapping("/creatorHome.do")
	public void creatorHome(int mem_no, int lec_no, Model model) {
		model.addAttribute("c", dao.getMember(mem_no));
		model.addAttribute("l", daoL.getLecture(lec_no));
	}


}
