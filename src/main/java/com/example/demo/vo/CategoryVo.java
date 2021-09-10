package com.example.demo.vo;

public class CategoryVo {
	private int cate_no;
	private String cate_title;
	public int getCate_no() {
		return cate_no;
	}
	public void setCate_no(int cate_no) {
		this.cate_no = cate_no;
	}
	public String getCate_title() {
		return cate_title;
	}
	public void setCate_title(String cate_title) {
		this.cate_title = cate_title;
	}
	public CategoryVo(int cate_no, String cate_title) {
		super();
		this.cate_no = cate_no;
		this.cate_title = cate_title;
	}
	public CategoryVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
