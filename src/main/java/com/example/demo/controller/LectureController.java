package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.LectureDao;
import com.example.demo.vo.LectureVo;

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
		// String location = (String)param.get("place");
		System.out.println("컨트롤러: " + place);
		return dao.listAroundMe(place);
	}

	////////////////////////////// 클래스 목록

	@RequestMapping("/bestLecture")
	public void listBest(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		if (end > total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listBest(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}

	@RequestMapping("/saleLecture")
	public void listSale(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalSaleLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listSale(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}

	@RequestMapping("/newLecture")
	public void listNew(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listNew(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}

	@RequestMapping("/recommandLecture")
	public void listRecommand(int age, String gender, int job,
			@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalRecommandLecture(age, gender, job);
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
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
/*
	@RequestMapping("/sortMax")
	public void listMax(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listMax(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}
	
	@RequestMapping("/sortMin")
	public void listMin(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, 
			@RequestParam(value="sortType", defaultValue = "max") String sortType, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝
		
		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
			end = total;
		}
		
		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		model.addAttribute("list", dao.listMax(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	}

	@RequestMapping("/sortReview")
	public void listReview(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, Model model) {
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		System.out.println("start :" + start);
		System.out.println("end:" + end);
		if (end > total) {
			end = total;
		}

		HashMap map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);

		model.addAttribute("list", dao.listReview(map));
		model.addAttribute("totalPage", LectureDao.totalPage);
	} */
	
	@RequestMapping("/searchLecture")
	public void searchLecture(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value="keyword", defaultValue = "none") String keyword,Model model) {
		System.out.println("keyword: " + keyword);
		int total = LectureDao.totalLecture;
		total = dao.getTotalLecture();
		LectureDao.totalPage = (int) Math.ceil((double) total / LectureDao.pageSize);
		int start = (pageNum - 1) * LectureDao.pageSize + 1; // 시작
		int end = start + LectureDao.pageSize - 1; // 끝

		if (end > total) {
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

}
