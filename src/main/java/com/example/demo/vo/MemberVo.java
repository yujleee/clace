package com.example.demo.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVo {
	private int mem_no;
	private String mem_id;
	private String mem_name;
	private String mem_pwd;
	private String mem_nickname;
	private String mem_profile;
	private String mem_phone;
	private String mem_email;
	private String mem_type;
	private Date mem_date;
	private String mem_gender;
	private int job_no;
	private int age_no;
	private MultipartFile uploadProfileFile;
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_profile() {
		return mem_profile;
	}
	public void setMem_profile(String mem_profile) {
		this.mem_profile = mem_profile;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	public Date getMem_date() {
		return mem_date;
	}
	public void setMem_date(Date mem_date) {
		this.mem_date = mem_date;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public int getJob_no() {
		return job_no;
	}
	public void setJob_no(int job_no) {
		this.job_no = job_no;
	}
	public int getAge_no() {
		return age_no;
	}
	public void setAge_no(int age_no) {
		this.age_no = age_no;
	}
	public MultipartFile getUploadProfileFile() {
		return uploadProfileFile;
	}
	public void setUploadProfileFile(MultipartFile uploadProfileFile) {
		this.uploadProfileFile = uploadProfileFile;
	}
	public MemberVo(int mem_no, String mem_id, String mem_name, String mem_pwd, String mem_nickname, String mem_profile,
			String mem_phone, String mem_email, String mem_type, Date mem_date, String mem_gender, int job_no,
			int age_no, MultipartFile uploadProfileFile) {
		super();
		this.mem_no = mem_no;
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_pwd = mem_pwd;
		this.mem_nickname = mem_nickname;
		this.mem_profile = mem_profile;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_type = mem_type;
		this.mem_date = mem_date;
		this.mem_gender = mem_gender;
		this.job_no = job_no;
		this.age_no = age_no;
		this.uploadProfileFile = uploadProfileFile;
	}
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
