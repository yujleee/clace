package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.BoardDao;


@Controller
public class BoardController {
	@Autowired
	private BoardDao dao;

	public void setDao(BoardDao dao) {
		this.dao = dao;
	}
	
//	/**
//	 * 리스트보드 화면으로 넘어가도록 하고 싶었다 -> 이 목적은 ?
//	 * @return
//	 */
//	@RequestMapping("/")
//	public ModelAndView main() {
//		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");
//		return mav;
//	}
	
//	@RequestMapping("/listBoard.do")
//	public void list(Model model) {
//		model.addAttribute("list", dao.findAll());
//	}
	
	@RequestMapping("/listBoard.do")
	public void list(HttpServletRequest request, @RequestParam(value = "pageNUM", 
						defaultValue = "1") int pageNUM, Model model) {
		System.out.println("pageNUM:"+pageNUM);
		BoardDao.totalRecord = dao.getTotalRecord();
		BoardDao.totalPage =
		(int) Math.ceil( (double) BoardDao.totalRecord / BoardDao.pageSIZE);
		
		int start = (pageNUM-1)* BoardDao.pageSIZE +1;
		int end=start+BoardDao.pageSIZE-1;
		if(end > BoardDao.totalRecord) {
			end = BoardDao.totalRecord;
		}
		System.out.println("start:"+start);
		System.out.println("end:"+end);
		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		model.addAttribute("list", dao.findAll(map));
		model.addAttribute("totalPage", BoardDao.totalPage);
	}
	
	@RequestMapping("/detailBoard.do")
	public void detail(HttpServletRequest request, Model model, int no) {
		dao.updateBrd_viewc(no);
		model.addAttribute("b",dao.getBoard(no));
	}
}











