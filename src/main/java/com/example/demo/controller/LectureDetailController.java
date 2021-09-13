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


import com.example.demo.dao.LectureDetailDao;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ZzimVo;


@Controller

public class LectureDetailController {

	@Autowired
	private LectureDetailDao dao;

	public void setDao(LectureDetailDao dao) {
		this.dao = dao;
	}

	@RequestMapping(value={"/detailLecture.do","/zzimOk.do","/unZzimOk.do"})
	public void detailLecture(int lec_no, Model model) {
		model.addAttribute("l", dao.getLecture(lec_no));
		model.addAttribute("c", dao.getCreator(lec_no));
		model.addAttribute("reviewList", dao.getReview(lec_no));
		model.addAttribute("reviewcnt", dao.getReviewCount(lec_no));
		model.addAttribute("askList", dao.getAsk(lec_no));
		model.addAttribute("zzimcnt", dao.getZzimCount(lec_no));
		model.addAttribute("z", dao.getZzim(lec_no));

	}
	
	@RequestMapping(value="/zzimOk.do", method = RequestMethod.GET)
	public ModelAndView zzim(ZzimVo z) {
		ModelAndView mav = new ModelAndView();
		int re = dao.registerZzim(z);
		if(re != 1) {
			mav.addObject("msg", "찜등록에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	@RequestMapping(value="/unZzimOk.do" ,method = RequestMethod.GET)
	public ModelAndView unZzim(ZzimVo z) {
		ModelAndView mav = new ModelAndView();
		int re = dao.deleteZzim(z);
		if(re != 1) {
			mav.addObject("msg", "찜취소에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	

}
