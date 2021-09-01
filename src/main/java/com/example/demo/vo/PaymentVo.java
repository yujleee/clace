package com.example.demo.vo;

import java.util.Date;

public class PaymentVo {
	private int pay_no;
	private String pay_type;
	private Date pay_date;
	private int pay_amount;
	private int mem_no;
	private int lec_no;
	public int getPay_no() {
		return pay_no;
	}
	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getLec_no() {
		return lec_no;
	}
	public void setLec_no(int lec_no) {
		this.lec_no = lec_no;
	}
	public PaymentVo(int pay_no, String pay_type, Date pay_date, int pay_amount, int mem_no, int lec_no) {
		super();
		this.pay_no = pay_no;
		this.pay_type = pay_type;
		this.pay_date = pay_date;
		this.pay_amount = pay_amount;
		this.mem_no = mem_no;
		this.lec_no = lec_no;
	}
	public PaymentVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
