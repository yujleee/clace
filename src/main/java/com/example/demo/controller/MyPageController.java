package com.example.demo.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

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

@Controller
public class MyPageController {
	
	@Autowired
	private MemberDao dao;

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/myPage.do")
	public void main() {
			
	}
	
	@RequestMapping("/getMemberInfo.do")
	public void getMemberInfo(Model model,int mem_no) {
		model.addAttribute("m", dao.getMemberInfo(mem_no));
	}
	
	@RequestMapping(value = "/updateMemberInfo.do", method = RequestMethod.GET)
	public void form(Model model, int mem_no) {
		model.addAttribute("m",dao.getMemberInfo(mem_no));
	}
	
	@RequestMapping(value = "/updateMemberInfo.do", method = RequestMethod.POST)
	public ModelAndView submit(MemberVo m,String age_no_data,String job_no_data,String mem_gender_data, HttpServletRequest request) {
		
		if(!age_no_data.equals("0")) {
			m.setAge_no(Integer.parseInt(age_no_data));
		}
		
		if(!job_no_data.equals("0")) {
			m.setJob_no(Integer.parseInt(job_no_data));
		}
		
		if(!mem_gender_data.equals("0")) {
			m.setMem_gender(mem_gender_data);
		}
		
		ModelAndView mav = new ModelAndView();	
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
				m.setMem_phone(mem_profile);
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
		}else {
			mav.addObject("msg", "회원 수정에 실패하였습니다.");
			mav.setViewName("error");
		}
		return mav;
	}
	
	@RequestMapping("/deleteMemberInfo.do")
	public ModelAndView deleteMemberInfo(int mem_no, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
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
	public void listMyBoard(Model model, @RequestParam(value = "brd_no" ,defaultValue = "0") int brd_no, int mem_no) {
		model.addAttribute("list", dao.listMyBoard(mem_no));
	   // brd_no = dao.getNextNo(); //게시물번호
	}
	
	@RequestMapping("/detailMyBoard.do")
	public void detailMyBoard(Model model, int brd_no) {
		model.addAttribute("b", dao.detailMyBoard(brd_no));
	}
	
	@RequestMapping("/listMyZzimLecture.do")
	public void listMyZzim(Model model,int mem_no) {
		model.addAttribute("list", dao.listMyZzimLecture(mem_no));
	}
	
	@RequestMapping("/listMyReview.do")
	public void listMyReview(Model model,int mem_no) {
		//System.out.println("listMyReview.do동작함:"+ mem_no);
		model.addAttribute("list",dao.listMyReview(mem_no));
	}

}
