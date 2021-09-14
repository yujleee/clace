package com.example.demo.vo;

public class JobVo{
	private int job_no;
	private String job_title;
	public int getJob_no() {
		return job_no;
	}
	public void setJob_no(int job_no) {
		this.job_no = job_no;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public JobVo(int job_no, String job_title) {
		super();
		this.job_no = job_no;
		this.job_title = job_title;
	}
	public JobVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
