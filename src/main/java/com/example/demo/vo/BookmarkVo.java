package com.example.demo.vo;

public class BookmarkVo {
	private int bmk_no;
	private int cr_no;
	private int mem_no;
	
	public int getBmk_no() {
		return bmk_no;
	}
	public void setBmk_no(int bmk_no) {
		this.bmk_no = bmk_no;
	}
	public int getCr_no() {
		return cr_no;
	}
	public void setCr_no(int cr_no) {
		this.cr_no = cr_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public BookmarkVo(int bmk_no, int cr_no, int mem_no) {
		super();
		this.bmk_no = bmk_no;
		this.cr_no = cr_no;
		this.mem_no = mem_no;
	}
	public BookmarkVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
