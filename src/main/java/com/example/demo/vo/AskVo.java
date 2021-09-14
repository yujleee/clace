package com.example.demo.vo;

import java.sql.Date;

public class AskVo {
	private int ask_no;
	private String ask_title;
	private String ask_content;
	private Date ask_date;
	private String ask_open_close;
	private String ask_status;
	private String mem_nickname;
	private int mem_no;
	private int lec_no;
	
	public int getAsk_no() {
		return ask_no;
	}

	public void setAsk_no(int ask_no) {
		this.ask_no = ask_no;
	}

	public String getAsk_title() {
		return ask_title;
	}

	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}

	public String getAsk_content() {
		return ask_content;
	}

	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
	}

	public Date getAsk_date() {
		return ask_date;
	}

	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}

	public String getAsk_open_close() {
		return ask_open_close;
	}

	public void setAsk_open_close(String ask_open_close) {
		this.ask_open_close = ask_open_close;
	}

	public String getAsk_status() {
		return ask_status;
	}

	public void setAsk_status(String ask_status) {
		this.ask_status = ask_status;
	}

	public String getMem_nickname() {
		return mem_nickname;
	}

	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
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

	public AskVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AskVo(int ask_no, String ask_title, String ask_content, Date ask_date, String ask_open_close,
			String ask_status, String mem_nickname, int mem_no, int lec_no) {
		super();
		this.ask_no = ask_no;
		this.ask_title = ask_title;
		this.ask_content = ask_content;
		this.ask_date = ask_date;
		this.ask_open_close = ask_open_close;
		this.ask_status = ask_status;
		this.mem_nickname = mem_nickname;
		this.mem_no = mem_no;
		this.lec_no = lec_no;
	}
}
