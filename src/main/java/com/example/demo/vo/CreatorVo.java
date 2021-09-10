package com.example.demo.vo;

public class CreatorVo {
	private int cr_no;
	private String cr_bsname;
	private String cr_bsno;
	private String cr_info;
	private int mem_no;
	
	public int getCr_no() {
		return cr_no;
	}
	public void setCr_no(int cr_no) {
		this.cr_no = cr_no;
	}
	public String getCr_bsname() {
		return cr_bsname;
	}
	public void setCr_bsname(String cr_bsname) {
		this.cr_bsname = cr_bsname;
	}
	public String getCr_bsno() {
		return cr_bsno;
	}
	public void setCr_bsno(String cr_bsno) {
		this.cr_bsno = cr_bsno;
	}
	public String getCr_info() {
		return cr_info;
	}
	public void setCr_info(String cr_info) {
		this.cr_info = cr_info;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public CreatorVo(int cr_no, String cr_bsname, String cr_bsno, String cr_info, int mem_no) {
		super();
		this.cr_no = cr_no;
		this.cr_bsname = cr_bsname;
		this.cr_bsno = cr_bsno;
		this.cr_info = cr_info;
		this.mem_no = mem_no;
	}
	public CreatorVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
