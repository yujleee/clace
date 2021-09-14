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

import com.example.demo.dao.LectureDao;

import com.example.demo.vo.CategoryVo;

import com.example.demo.db.MyPageManager;

import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;

@Controller
public class LectureController {

	@Autowired
	private LectureDao dao;

	public void setDao(LectureDao dao) {
		this.dao = dao;
	}


	@RequestMapping("/index")
	public void index() {
	}

	@RequestMapping("/listBestLecture")
	@ResponseBody
	public List<LectureVo> listBestLecture() {
		return dao.listBestLecture();
	}

	@RequestMapping("/listSaleLecture")
	@ResponseBody
	public List<LectureVo> listSaleLecture() {
		return dao.listSaleLecture();
	}

	@RequestMapping("/listNewLecture")
	@ResponseBody
	public List<LectureVo> listNewLecture() {
		return dao.listNewLecture();
	}

	@RequestMapping("/listAroundMe")
	@ResponseBody
	public List<LectureVo> listAroundMe(@RequestParam(value = "place", defaultValue = "서울") String place) {
		return dao.listAroundMe(place);
	}

	////////////////////////////// 클래스 목록

	@RequestMapping(value = {"/bestLecture", "/newLecture", "/saleLecture"})
	public void listBest(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model, HttpServletRequest request) {
		
		String currentPath = request.getServletPath();
		
		int total = LectureDao.totalLecture;
		
		if(currentPath.equals("/saleLecture")) {
			total = dao.getTotalSaleLecture();
			System.out.println("세일 클래스 수 :" + total);
		} else {
			total = dao.getTotalLecture();
		}
		
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		
		if (end < total) {
			end = total;
		}

		
		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		//url패스에 따른 처리
		if(currentPath.equals("/bestLecture")) {
			model.addAttribute("list", dao.listBest(map));			
		} else if(currentPath.equals("/newLecture")) {
			model.addAttribute("list", dao.listNew(map));		
		} else if(currentPath.equals("/saleLecture")) {
			model.addAttribute("list", dao.listSale(map));
		}
		
		model.addAttribute("totalPage", LectureDao.totalPage);
	}


	@RequestMapping("/recommandLecture")
	public void listRecommand(HttpSession session,
			@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		
		int age = ((MemberVo)session.getAttribute("loginM")).getAge_no();
		String gender = ((MemberVo)session.getAttribute("loginM")).getMem_gender();
		int job = ((MemberVo)session.getAttribute("loginM")).getJob_no();
		
		total = dao.getTotalRecommandLecture(age, gender, job);
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝
		
		if (end < total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("age_no", age);
		map.put("lec_gender", gender);
		map.put("job_no", job);
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listRecommand(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}

	@RequestMapping("/searchLecture")
	public void searchLecture(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value="keyword", defaultValue = "") String keyword,Model model) {
		System.out.println("keyword: " + keyword);
		int total = LectureDao.totalLecture;
		total = dao.getTotalSearchLecture(keyword);
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		if (end < total) {
			end = total;
		}
		
		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("keyword", keyword);
		
		model.addAttribute("list", dao.searchLecture(map));
		model.addAttribute("keyword", keyword);
		model.addAttribute("totalPage", LectureDao.totalPage);
	}
	
	@RequestMapping("/categoryLecture")
	public void categoryLecture(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value="category", defaultValue = "아웃도어") String category, Model model) {
		System.out.println("category: " + category);
		int total = LectureDao.totalLecture;
		total = dao.getTotalCategoryLecture(category);
		System.out.println(total);
		LectureDao.totalPage = (int)Math.ceil((double) total / LectureDao.pageSize);
	
		if(LectureDao.totalPage == 0) {
			LectureDao.totalPage = 1;
		}
		
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝
		
		if (end < total) {
			end = total;
		}
		
		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		map.put("category", category);
		
		model.addAttribute("list", dao.categoryLecture(map));
		model.addAttribute("category", category);
		model.addAttribute("totalPage", LectureDao.totalPage);
	}
	
	@RequestMapping("/listCategory")
	@ResponseBody
	public List<CategoryVo> listCategory() {
		return dao.listCategory();
	}

}
