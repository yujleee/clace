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
	
	/**
	 * 회원정보를 데이터베이스에 insert하는 메소드
	 * @param m 입력한 멤버정보를 받아올 수 있는 객체
	 * @return
	 */
	public int insertMember(MemberVo m) {
		return DBManager.insertMember(m);
	}
	public int getMem_no() {
		return DBManager.getMem_no();
	}
}
