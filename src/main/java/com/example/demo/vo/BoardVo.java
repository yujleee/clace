package com.example.demo.vo;

import java.util.Date;

public class BoardVo {
	private int brd_no;
	private String brd_writer;
	private String brd_title;
	private String brd_content;
	private Date brd_date;
	private int brd_rec;
	private int brd_viewc;
	private String brd_hashtag;
	private int mem_no;
	
	public int getBrd_no() {
		return brd_no;
	}
	public void setBrd_no(int brd_no) {
		this.brd_no = brd_no;
	}
	public String getBrd_writer() {
		return brd_writer;
	}
	public void setBrd_writer(String brd_writer) {
		this.brd_writer = brd_writer;
	}
	public String getBrd_title() {
		return brd_title;
	}
	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}
	public String getBrd_content() {
		return brd_content;
	}
	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}
	public Date getBrd_date() {
		return brd_date;
	}
	public void setBrd_date(Date brd_date) {
		this.brd_date = brd_date;
	}
	public int getBrd_rec() {
		return brd_rec;
	}
	public void setBrd_rec(int brd_rec) {
		this.brd_rec = brd_rec;
	}
	public int getBrd_viewc() {
		return brd_viewc;
	}
	public void setBrd_viewc(int brd_viewc) {
		this.brd_viewc = brd_viewc;
	}
	public String getBrd_hashtag() {
		return brd_hashtag;
	}
	public void setBrd_hashtag(String brd_hashtag) {
		this.brd_hashtag = brd_hashtag;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public BoardVo(int brd_no, String brd_writer, String brd_title, String brd_content, Date brd_date, int brd_rec,
			int brd_viewc, String brd_hashtag, int mem_no) {
		super();
		this.brd_no = brd_no;
		this.brd_writer = brd_writer;
		this.brd_title = brd_title;
		this.brd_content = brd_content;
		this.brd_date = brd_date;
		this.brd_rec = brd_rec;
		this.brd_viewc = brd_viewc;
		this.brd_hashtag = brd_hashtag;
		this.mem_no = mem_no;
	}
	public BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
