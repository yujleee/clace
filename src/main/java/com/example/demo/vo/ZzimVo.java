package com.example.demo.vo;

public class ZzimVo {
	private int zzim_no;
	private int mem_no;
	private int lec_no;
	
	public int getZzim_no() {
		return zzim_no;
	}
	public void setZzim_no(int zzim_no) {
		this.zzim_no = zzim_no;
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
	public ZzimVo(int zzim_no, int mem_no, int lec_no) {
		super();
		this.zzim_no = zzim_no;
		this.mem_no = mem_no;
		this.lec_no = lec_no;
	}
	public ZzimVo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
