package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.example.demo.dao.LectureDetailDao;
import com.example.demo.vo.AskVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ZzimVo;


@Controller

public class LectureDetailController {

	@Autowired
	private LectureDetailDao dao;

	public void setDao(LectureDetailDao dao) {
		this.dao = dao;
	}
	
	@GetMapping(value="/detailLecture.do")
	public void detailLecture(int lec_no, Model model) {
		
		model.addAttribute("l", dao.getLecture(lec_no));
		model.addAttribute("c", dao.getCreator(lec_no));
		model.addAttribute("reviewList", dao.getReview(lec_no));
		model.addAttribute("reviewcnt", dao.getReviewCount(lec_no));
		model.addAttribute("askList", dao.getAsk(lec_no));
		model.addAttribute("zzimcnt", dao.getZzimCount(lec_no));		
	}
	
	@RequestMapping(value="/zzimOk.do", method = RequestMethod.GET)
	public ModelAndView zzim(ZzimVo z, int lec_no, HttpSession session) {
		int mem_no = ((MemberVo) session.getAttribute("loginM")).getMem_no();
		
		z.setMem_no(mem_no);
		
		ModelAndView mav = new ModelAndView("redirect:/detailLecture.do?lec_no=" + lec_no);
		int re = dao.registerZzim(z);
		if(re != 1) {
			mav.addObject("msg", "찜등록에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	@RequestMapping(value="/unZzimOk.do" ,method = RequestMethod.GET)
	public ModelAndView unZzim(ZzimVo z, int lec_no, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/detailLecture.do?lec_no=" + lec_no);
		int mem_no = ((MemberVo) session.getAttribute("loginM")).getMem_no();
		z.setMem_no(mem_no);
		int re = dao.deleteZzim(z);
		if(re != 1) {
			mav.addObject("msg", "찜취소에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	
	
	@RequestMapping(value = "/insertAsk", method = RequestMethod.GET)
	public void askForm(Model model, int lec_no) {
		model.addAttribute("lec_no", lec_no);
	}
	
	@RequestMapping(value = "/insertAsk", method = RequestMethod.POST)
	public ModelAndView insertAsk(AskVo a, HttpSession session) {
		int lec_no = a.getLec_no();
		ModelAndView mav = new ModelAndView("redirect:/detailLecture.do?lec_no=" + lec_no);
		
		MemberVo memberVo = (MemberVo) session.getAttribute("loginM");
		int mem_no = memberVo.getMem_no();
		
		if(a.getAsk_open_close() == null) {
			a.setAsk_open_close("open");
		}
		
		
		a.setMem_no(mem_no);
		a.setAsk_content(a.getAsk_content().replaceAll("\r\n", "<br>"));
		int re = dao.insertAsk(a);
		if(re != 1) {
			mav.addObject("msg", "문의 등록에 실패했습니다.");
			mav.setViewName("error");
		}
		System.out.println("동작");
		
		return mav;
	}
}
