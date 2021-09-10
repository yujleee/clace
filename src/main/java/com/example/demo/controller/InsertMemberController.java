package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MemberDao;
import com.example.demo.vo.MemberVo;

@Controller
public class InsertMemberController {

	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/join.do",method = RequestMethod.GET)
	public void joinPageform() {
		
	}
	
	@RequestMapping(value="/join.do",method = RequestMethod.POST)
	public ModelAndView submit(MemberVo m) {
		ModelAndView mav = new ModelAndView("joinOK");
		
		//조금전에 만든 dao의 새로운 회원번호를 생성해주는 메소드를 호출하여 정수형변수에 담아본다.
		int g = dao.getMem_no();
		
		//위의 변수 g를 vo의 멤버vo m의 새로운 회원번호로 설정한다.
		m.setMem_no(g);
		
		
		int re = dao.insertMember(m);
		System.out.println("controller에서 insert결과"+re);
		
		//re 상태유지 
		mav.addObject("re",re);
		
		return mav;
	}
	
	
}
