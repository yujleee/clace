package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.dao.LectureDao;
import com.example.demo.dao.PaymentDao;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.PaymentVo;

@Controller
public class PaymentController {

	@Autowired
	LectureDao lectureDao;
	
	@Autowired
	PaymentDao paymentDao;
	
	@RequestMapping(value =  "/paymentOK.do",method = RequestMethod.POST)
	public void paymentOK( PaymentVo p) {
	System.out.println("paymentOK 동작함");
	
		p.setPay_no(paymentDao.getPay_no());
		paymentDao.insertPayment(p);
	}
	
	/**
	 * 주문 페이지:
	 * 사용자가 결제를 하는 화면이다.
	 * 클래스 상세에서 사용자가 일정을 선택하고, 클래스 신청하기 버튼을 누르면 이곳으로 온다.
	 * 사용자는 여기서 주문 내용을 확인한다.
	 * 최종적으로 결제 버튼을 누르면
	 * 결제창이 열리고, 아임포트를 통해 결제가 일어난다.
	 * 그리고 결제가 성공하면 결제 성공 페이지로 이동하고,
	 * 결제가 실패하면 결제 실패 페이지로 이동한다.
	 * @param lec_no 클래스 번호
	 * @param selectDate 사용자가 선택한 날짜 (YYYY-MM-DD)
	 * @param session 스프링이 제공해주는 HttpSession
	 * @param model 스프링이 제공해주는 Model // ModelAndView는 왠지 뷰에게 모델 전달이 잘 안 됐음
	 */
	@RequestMapping("/order.do")
	public void order(int lec_no, String selectDate, HttpSession session, Model model) {
	//	LectureVo lectureVo = lectureDao.selectLectureOne(lec_no); // 변수의 선언과 초기화 // =,그리고 좌항, 우항 // 좌항은.. 변수다 // 우항은.. 값이다
		
		LectureVo lectureVo = lectureDao.getLecture(lec_no);
		double sale = lectureVo.getLec_sale();
		System.out.println("lec_no:" + lec_no);
		System.out.println("sale: " + sale);
		MemberVo memberVo = (MemberVo) session.getAttribute("loginM");
		
		model.addAttribute("lec_no", lec_no);
		model.addAttribute("selectDate", selectDate);
		model.addAttribute("lectureVo", lectureVo); // 컨트롤러는 여기서 뷰에 넘겨줄 모델을 넣어주고있다.
		model.addAttribute("memberVo", memberVo);
	}
	
}
