package com.example.demo.dao;


import org.springframework.stereotype.Repository;

import com.example.demo.db.CreatorManager;
import com.example.demo.db.DBManager;
import com.example.demo.vo.MemberVo;	
import java.util.List;

import com.example.demo.db.MyPageManager;
import com.example.demo.vo.AgeVo;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.CategoryVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.JobVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

@Repository
public class CreatorDao {
	
	
	public MemberVo getMember(int mem_no) {
		return CreatorManager.getMemberInfo(mem_no);
	}
	
	public CreatorVo getCreatorInfo(int mem_no) {
		return CreatorManager.getCreatorInfo(mem_no);
	}
	
	public int updateCreatorInfo(CreatorVo c) {
		return CreatorManager.updateCreatorInfo(c);
	}
	
	
	public List<CategoryVo> listCategory(){
		return CreatorManager.listCategory();
	}
	public List<JobVo> listJob(){
		return CreatorManager.listJob();
	}
	public List<AgeVo> listAge(){
		return CreatorManager.listAge();
	}
	
	
	
	
}
