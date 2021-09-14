package com.example.demo.vo;

import org.springframework.web.multipart.MultipartFile;

public class ReviewVo {
	private int re_no;
	private String re_title;
	private String re_conent;
	private int re_grade;
	private String re_img;
	private int mem_no;
	private int lec_no;
	private String mem_nickname;
	private String lec_name;
	private MultipartFile uploadFile;
	
	
	
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getRe_no() {
		return re_no;
	}
	public void setRe_no(int re_no) {
		this.re_no = re_no;
	}
	public String getRe_title() {
		return re_title;
	}
	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}
	public String getRe_conent() {
		return re_conent;
	}
	public void setRe_conent(String re_conent) {
		this.re_conent = re_conent;
	}
	public int getRe_grade() {
		return re_grade;
	}
	public void setRe_grade(int re_grade) {
		this.re_grade = re_grade;
	}
	public String getRe_img() {
		return re_img;
	}
	public void setRe_img(String re_img) {
		this.re_img = re_img;
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
	public String getLec_name() {
		return lec_name;
	}
	public void setLec_name(String lec_name) {
		this.lec_name = lec_name;
	}
	
	
	
	public ReviewVo(int re_no, String re_title, String re_conent, int re_grade, String re_img, int mem_no, int lec_no,
			String mem_nickname, String lec_name, MultipartFile uploadFile) {
		super();
		this.re_no = re_no;
		this.re_title = re_title;
		this.re_conent = re_conent;
		this.re_grade = re_grade;
		this.re_img = re_img;
		this.mem_no = mem_no;
		this.lec_no = lec_no;
		this.mem_nickname = mem_nickname;
		this.lec_name = lec_name;
		this.uploadFile = uploadFile;
	}
	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
