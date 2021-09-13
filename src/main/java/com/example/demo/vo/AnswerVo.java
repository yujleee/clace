package com.example.demo.vo;

import java.sql.Date;

public class AnswerVo {
	private int ans_no;
	private String ans_title;
	private String ans_content;
	private Date ans_date;
	private String ans_open_close;
	private int cr_no;
	private int ask_no;
	public int getAns_no() {
		return ans_no;
	}
	public void setAns_no(int ans_no) {
		this.ans_no = ans_no;
	}
	public String getAns_title() {
		return ans_title;
	}
	public void setAns_title(String ans_title) {
		this.ans_title = ans_title;
	}
	public String getAns_content() {
		return ans_content;
	}
	public void setAns_content(String ans_content) {
		this.ans_content = ans_content;
	}
	public Date getAns_date() {
		return ans_date;
	}
	public void setAns_date(Date ans_date) {
		this.ans_date = ans_date;
	}
	public String getAns_open_close() {
		return ans_open_close;
	}
	public void setAns_open_close(String ans_open_close) {
		this.ans_open_close = ans_open_close;
	}
	public int getCr_no() {
		return cr_no;
	}
	public void setCr_no(int cr_no) {
		this.cr_no = cr_no;
	}
	public int getAsk_no() {
		return ask_no;
	}
	public void setAsk_no(int ask_no) {
		this.ask_no = ask_no;
	}
	public AnswerVo(int ans_no, String ans_title, String ans_content, Date ans_date, String ans_open_close, int cr_no,
			int ask_no) {
		super();
		this.ans_no = ans_no;
		this.ans_title = ans_title;
		this.ans_content = ans_content;
		this.ans_date = ans_date;
		this.ans_open_close = ans_open_close;
		this.cr_no = cr_no;
		this.ask_no = ask_no;
	}
	public AnswerVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
