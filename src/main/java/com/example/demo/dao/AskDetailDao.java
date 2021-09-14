package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.AskDetailManager;
import com.example.demo.vo.AnswerVo;
import com.example.demo.vo.AskVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.ReviewVo;

@Repository
public class AskDetailDao {
	
	public AskVo getAskInfo(int ask_no) {
		return AskDetailManager.getAskInfo(ask_no);
	}
	
	public AnswerVo getAnswer(int ask_no) {
		return AskDetailManager.getAnswer(ask_no);
	}
}
