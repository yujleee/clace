package com.example.demo.dao;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.MemberVo;

@Repository
public class MemberDao {

	public boolean isMember(String mem_id, String mem_pwd) {
		return DBManager.isMember(mem_id,mem_pwd);
	}
	public MemberVo getMember(String mem_id) {
		return DBManager.getMember(mem_id);
	}
	public int insertMember(MemberVo m) {
		return DBManager.insertMember(m);
	}
	public int getMem_no() {
		return DBManager.getMem_no();
	}
}
