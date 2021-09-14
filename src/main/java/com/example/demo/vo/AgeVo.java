package com.example.demo.vo;

public class AgeVo{
	private int age_no;
	private int age_group;
	public int getAge_no() {
		return age_no;
	}
	public void setAge_no(int age_no) {
		this.age_no = age_no;
	}
	public int getAge_group() {
		return age_group;
	}
	public void setAge_group(int age_group) {
		this.age_group = age_group;
	}
	public AgeVo(int age_no, int age_group) {
		super();
		this.age_no = age_no;
		this.age_group = age_group;
	}
	public AgeVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
