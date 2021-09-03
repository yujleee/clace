package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MemberDao;
import com.example.demo.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
		
	@RequestMapping(value="/login.do",method = RequestMethod.GET)
	public void loginForm() {
		
	}
	@RequestMapping("/loginOK.do")
	public void loginOK() {
		
	}
	
	@RequestMapping(value="/login.do",method = RequestMethod.POST)
	public ModelAndView loginSubmit(HttpSession session,
			String mem_id,
			String mem_pwd) {
		System.out.println("mem_id:"+mem_id);
		System.out.println("mem_pwd:"+mem_pwd);
		ModelAndView mav = new ModelAndView();
		
		if(dao.isMember(mem_id, mem_pwd)) {
			MemberVo m = dao.getMember(mem_id);
			session.setAttribute("loginM", m);
			mav.setViewName("redirect:/loginOK.do");
		}else {
			mav.setViewName("redirect:/login.do");
		}
		return mav;
	}
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/index.do");
		session.invalidate();
		return mav;
		
	}
	
	

}
