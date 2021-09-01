package com.example.demo.vo;

import java.sql.Date;

public class LectureVo {
	private int lec_no;
	private String lec_name;
	private int lec_category;
	private String lec_image;
	private int lec_price;
	private double lec_sale;
	private String lec_content;
	private String lec_onoff;
	private String lec_place;
	private Date lec_start;
	private Date lec_end;
	private Date lec_reg;
	private int lec_view;
	private int lec_grade;
	private String lec_hashtag;
	private int cr_no;
	private int lec_ageGroup;
	private String lec_gender;
	private int lec_job;
	
	private PaymentVo paymentVo; //payment 조인 

	public int getLec_no() {
		return lec_no;
	}

	public void setLec_no(int lec_no) {
		this.lec_no = lec_no;
	}

	public String getLec_name() {
		return lec_name;
	}

	public void setLec_name(String lec_name) {
		this.lec_name = lec_name;
	}

	public int getLec_category() {
		return lec_category;
	}

	public void setLec_category(int lec_category) {
		this.lec_category = lec_category;
	}

	public String getLec_image() {
		return lec_image;
	}

	public void setLec_image(String lec_image) {
		this.lec_image = lec_image;
	}

	public int getLec_price() {
		return lec_price;
	}

	public void setLec_price(int lec_price) {
		this.lec_price = lec_price;
	}

	public double getLec_sale() {
		return lec_sale;
	}

	public void setLec_sale(double lec_sale) {
		this.lec_sale = lec_sale;
	}

	public String getLec_content() {
		return lec_content;
	}

	public void setLec_content(String lec_content) {
		this.lec_content = lec_content;
	}

	public String getLec_onoff() {
		return lec_onoff;
	}

	public void setLec_onoff(String lec_onoff) {
		this.lec_onoff = lec_onoff;
	}

	public String getLec_place() {
		return lec_place;
	}

	public void setLec_place(String lec_place) {
		this.lec_place = lec_place;
	}

	public Date getLec_start() {
		return lec_start;
	}

	public void setLec_start(Date lec_start) {
		this.lec_start = lec_start;
	}

	public Date getLec_end() {
		return lec_end;
	}

	public void setLec_end(Date lec_end) {
		this.lec_end = lec_end;
	}

	public Date getLec_reg() {
		return lec_reg;
	}

	public void setLec_reg(Date lec_reg) {
		this.lec_reg = lec_reg;
	}

	public int getLec_view() {
		return lec_view;
	}

	public void setLec_view(int lec_view) {
		this.lec_view = lec_view;
	}

	public int getLec_grade() {
		return lec_grade;
	}

	public void setLec_grade(int lec_grade) {
		this.lec_grade = lec_grade;
	}

	public String getLec_hashtag() {
		return lec_hashtag;
	}

	public void setLec_hashtag(String lec_hashtag) {
		this.lec_hashtag = lec_hashtag;
	}

	public int getCr_no() {
		return cr_no;
	}

	public void setCr_no(int cr_no) {
		this.cr_no = cr_no;
	}

	public int getLec_ageGroup() {
		return lec_ageGroup;
	}

	public void setLec_ageGroup(int lec_ageGroup) {
		this.lec_ageGroup = lec_ageGroup;
	}

	public String getLec_gender() {
		return lec_gender;
	}

	public void setLec_gender(String lec_gender) {
		this.lec_gender = lec_gender;
	}

	public int getLec_job() {
		return lec_job;
	}

	public void setLec_job(int lec_job) {
		this.lec_job = lec_job;
	}

	public PaymentVo getPaymentVo() {
		return paymentVo;
	}

	public void setPaymentVo(PaymentVo paymentVo) {
		this.paymentVo = paymentVo;
	}

	public LectureVo(int lec_no, String lec_name, int lec_category, String lec_image, int lec_price, double lec_sale,
			String lec_content, String lec_onoff, String lec_place, Date lec_start, Date lec_end, Date lec_reg,
			int lec_view, int lec_grade, String lec_hashtag, int cr_no, int lec_ageGroup, String lec_gender,
			int lec_job) {
		super();
		this.lec_no = lec_no;
		this.lec_name = lec_name;
		this.lec_category = lec_category;
		this.lec_image = lec_image;
		this.lec_price = lec_price;
		this.lec_sale = lec_sale;
		this.lec_content = lec_content;
		this.lec_onoff = lec_onoff;
		this.lec_place = lec_place;
		this.lec_start = lec_start;
		this.lec_end = lec_end;
		this.lec_reg = lec_reg;
		this.lec_view = lec_view;
		this.lec_grade = lec_grade;
		this.lec_hashtag = lec_hashtag;
		this.cr_no = cr_no;
		this.lec_ageGroup = lec_ageGroup;
		this.lec_gender = lec_gender;
		this.lec_job = lec_job;
	}

	
	public LectureVo(String lec_name, String lec_image, int lec_price, double lec_sale, int lec_grade) {
		super();
		this.lec_name = lec_name;
		this.lec_image = lec_image;
		this.lec_price = lec_price;
		this.lec_sale = lec_sale;
		this.lec_grade = lec_grade;
	}

	public LectureVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
}
