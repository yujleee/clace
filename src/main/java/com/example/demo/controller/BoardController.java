package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
//	 * 리스트보드 화면으로 넘어가도록 하고 싶었다 -> 이 목적은 뭘까요?
//	 * @return
//	 */
//	@RequestMapping("/")
//	public ModelAndView main() {
//		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");
//		return mav;
//	}
	
	@RequestMapping("/listBoard.do")
	public void list(Model model) {
		model.addAttribute("list", dao.findAll());
	}
	
	@RequestMapping("/detailBoard.do")
	public void detail(Model model, int no) {
		dao.updateBrd_viewc(no);
		model.addAttribute("b",dao.getBoard(no));
	}
}











