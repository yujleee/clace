package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MemberDao;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;

@Controller
public class MyPageController {
	
	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/myPage.do")
	public void main(Model model, HttpSession session) {
		//System.out.println("myPage.do동작함");
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		//System.out.println("myPage.do동작함");
		//System.out.println("로그인한 회원번호:"+mem_no);
		model.addAttribute("list", dao.listMyLecture(mem_no));
	}
	
	@RequestMapping("/getMemberInfo.do")
	public void getMemberInfo(Model model,HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("m", dao.getMemberInfo(mem_no));
	}
	
	@RequestMapping(value = "/updateMemberInfo.do", method = RequestMethod.GET)
	public void form(Model model, HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("m",dao.getMemberInfo(mem_no));
	}
	
	@RequestMapping(value = "/updateMemberInfo.do", method = RequestMethod.POST)
	public ModelAndView submit(MemberVo m,String age_no_data,String job_no_data,String mem_gender_data,
			HttpServletRequest request, HttpSession session) {
		
		if(!age_no_data.equals("0")) {
			m.setAge_no(Integer.parseInt(age_no_data));
		}
		
		if(!job_no_data.equals("0")) {
			m.setJob_no(Integer.parseInt(job_no_data));
		}
		
		if(!mem_gender_data.equals("0")) {
			m.setMem_gender(mem_gender_data);
		}
		
		ModelAndView mav = new ModelAndView("redirect:/myPage.do");	
		String path = request.getRealPath("/resources/profile"); 
		System.out.println("path:"+path);
		String oldMem_profile = m.getMem_profile();
		
		String mem_profile = null;
		MultipartFile uploadProfileFile = m.getUploadProfileFile();
		mem_profile = uploadProfileFile.getOriginalFilename();
		if(mem_profile != null && !mem_profile.equals("")) {
			try {
				byte[] data = uploadProfileFile.getBytes();
				FileOutputStream fos = new FileOutputStream(path+"/"+mem_profile);
				fos.write(data);
				fos.close();
				m.setMem_profile(mem_profile);
			}catch (Exception e) {
				System.out.println("예외발생:"+e.getMessage());
			}
		}
		int re = dao.updateMemberInfo(m);
		
		if(re == 1) {
			if(mem_profile != null && !mem_profile.equals("")) {
				File file = new File(path+"/"+oldMem_profile);
				file.delete();
			}
			// 수정한 회원의 정보를 다시 꺼내와서 로그인한 회원에 대한 정보를 다시 세션에 저장
			session.setAttribute("loginM", dao.getMemberInfo(m.getMem_no()));
			//System.out.println("수정한 회원의 정보를 다시 상태유지하였습니다.");
			MemberVo m1 = dao.getMemberInfo(m.getMem_no());
			System.out.println("m1:"+m1);
		}else {
			mav.addObject("msg", "회원 수정에 실패하였습니다.");
			mav.setViewName("error");
		}
		
		return mav;
	}
	
	@RequestMapping("/deleteMemberInfo.do")
	public ModelAndView deleteMemberInfo(HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		String path = request.getRealPath("/resources/profile");
		String oldMem_profile = dao.getMemberInfo(mem_no).getMem_profile();
		
		int re = dao.deleteMemberInfo(mem_no);
		if(re == 1) {
			File file = new File(path+"/"+oldMem_profile);
			file.delete();
		}else {
			mav.addObject("msg","회원 탈퇴에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	@RequestMapping("/listMyBoard.do")
	public void listMyBoard(Model model, HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("list", dao.listMyBoard(mem_no));
	}
	
	@RequestMapping("/detailMyBoard.do")
	public void detailMyBoard(Model model, int brd_no) {
		model.addAttribute("b", dao.detailMyBoard(brd_no));
	}
	
	@RequestMapping("/listMyZzimLecture.do")
	public void listMyZzim(Model model, HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("list", dao.listMyZzimLecture(mem_no));
	}
	
	@RequestMapping("/listMyReview.do")
	public void listMyReview(Model model,HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("list",dao.listMyReview(mem_no));
	}
	
	@RequestMapping("/listMyLecture.do")
	public void listMyLecture(Model model, HttpSession session) {
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		model.addAttribute("list", dao.listMyLecture(mem_no));
	}
	
	@RequestMapping(value = "/insertReview.do", method = RequestMethod.GET)
	public void insertReviewform(Model model,int lec_no) {
		model.addAttribute("lec_no",lec_no );
	}
	
	@RequestMapping(value = "/insertReview.do", method = RequestMethod.POST)
	public ModelAndView insertReviewsubmit(Model model, ReviewVo r, HttpSession session,HttpServletRequest request) {
	//public ModelAndView insertReviewsubmit(int mem_no) {
		ModelAndView mav = new ModelAndView("redirect:/listMyReview.do");
		System.out.println("mem_no:"+r.getMem_no());
		MemberVo m = (MemberVo)session.getAttribute("loginM");
		int mem_no = m.getMem_no();
		r.setMem_no(mem_no);
		String path = request.getRealPath("/resources/profile");
		System.out.println("path:"+path);
		MultipartFile uploadFile = r.getUploadFile();
		
		if(uploadFile != null) {
			String fileName = uploadFile.getOriginalFilename();
			r.setRe_img(fileName);
			try {
				byte [] data = uploadFile.getBytes();
				FileOutputStream fos = new FileOutputStream(path+"/"+fileName);
				fos.write(data);
				fos.close();
			}catch (Exception e) {
				System.out.println("예외발생:"+e.getMessage());
			}
		}
		int re = dao.insertMyReview(r);
		
		if(re != 1) {
			mav.addObject("msg","리뷰등록에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	@RequestMapping("/detailMyReview.do")
	public ModelAndView detailMyReview(HttpSession session, int re_no) {
		ModelAndView mav = new ModelAndView();
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		mav.addObject("r",dao.getMyReview(re_no));
		return mav;
	}
	
	@RequestMapping(value = "/updateMyReview.do", method = RequestMethod.GET)
	public ModelAndView updateMyReviewform(int re_no, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int mem_no = ((MemberVo)session.getAttribute("loginM")).getMem_no();
		mav.addObject("r", dao.getMyReview(re_no));
		return mav;
	}
	
	@RequestMapping(value = "/updateMyReview.do", method = RequestMethod.POST)
	public ModelAndView updateMyReviewsubmit(ReviewVo r, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/listMyReview.do");
		String path = request.getRealPath("/resources/profile");
		System.out.println("path:"+path);
		String oldRe_img = r.getRe_img();
		String re_img = null;
		
		MultipartFile uploadFile = r.getUploadFile();
		re_img = uploadFile.getOriginalFilename();
		
		if(re_img != null && !re_img.equals("")) {
			System.out.println("파일만 수정한다");
			try {
				byte[] data = uploadFile.getBytes();
				FileOutputStream fos = new FileOutputStream(path+"/"+re_img);
				fos.write(data);
				fos.close();
			}catch (Exception e) {
				System.out.println("예외발생:"+e.getMessage());
			}
			
		}else {
			System.out.println("파일은 수정하지 않는다");
		}
		
		if(re_img != null && !re_img.equals("")) {
			r.setRe_img(re_img);
		}
		
		int re = dao.updateMyReview(r);
		if(re == 1) {
			if(re_img != null && !re_img.equals("")) {
				File file = new File(path+"/"+oldRe_img);
				file.delete();
			}
		}else{
			mav.addObject("msg", "리뷰 수정에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}

}
