package com.example.demo.dao;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.PaymentVo;

@Repository
public class PaymentDao {


	
	
	/**
	 * 결제정보를 데이터베이스에 insert하는 메소드
	 * @param m 입력한 멤버정보를 받아올 수 있는 객체
	 * @return
	 */
	public int insertPayment(PaymentVo p) {
		return DBManager.insertPayment(p);
	}
	public int getPay_no() {
		return DBManager.getPay_no();
	}
	public PaymentVo getPayment(int pay_no) {
		return DBManager.getPayment(pay_no);
	}
}
