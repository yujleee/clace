package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.BoardDao;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.MemberVo;

@Controller
@RequestMapping("/insertBoard.do")
public class InsertBoardController {

	@Autowired
	private BoardDao dao;

	public void setDao(BoardDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public void form(Model model,@RequestParam(value="no",defaultValue = "0") int no){
				
		// int no = Integer.parseInt(request.getParamter("no"));
		//	int brd_no = Integer.parseInt(request.getParamter("brd_no"));
		//int brd_pwd = Integer.parseInt(request.getParamter("brd_pwd"));
		
		System.out.println("no:"+no);
		model.addAttribute("no",no);
	}
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView submit(BoardVo b, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/listBoard.do");
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		
		int no = dao.getNextNo();
		System.out.println("새로운 게시물 번호"+no);
		System.out.println("로그인한 회원번호"+mem_no);
		b.setBrd_no(no);
		b.setMem_no(mem_no);
		int re = dao.insert(b);
		if(re != 1) {
			mav.addObject("msg", "게시물 등록에 실패하였습니다.");
			mav.setViewName("error");
		}
		
		return mav;
	}
}
