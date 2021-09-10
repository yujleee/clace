package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dao.LectureDao;
import com.example.demo.vo.LectureVo;

@Controller
public class LectureController {

	@Autowired
	private LectureDao dao;

	public void setDao(LectureDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/index.do")
	public void index() {
	}

	@RequestMapping("/newLecture.do")
	public void newLecture() {
	}
	
	@RequestMapping("/bestLecture.do")
	public void bestLecture() {
	}
	
	@RequestMapping("/listBestLecture")
	@ResponseBody
	public List<LectureVo> listBestLecture(){
		return dao.listBestLecture();
	}

	
	@RequestMapping("/listSaleLecture")
	@ResponseBody 
	public List<LectureVo> listSaleLecture(){ 
		 return dao.listSaleLecture();
	}
	  
	@RequestMapping("/listNewLecture")
	@ResponseBody 
	public List<LectureVo> listNewLecture(){ 
		return dao.listNewLecture();
	}
	
	
	@RequestMapping("/listAroundMe")
	@ResponseBody 
	public List<LectureVo> listAroundMe(@RequestParam Map<String,Object> param){ 
		String location = (String)param.get("place");
		System.out.println("컨트롤러: " + location); 
		return dao.listAroundMe(location); 
	}
	 
	
	 

}
