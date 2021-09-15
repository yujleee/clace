package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.AskDetailManager;
import com.example.demo.db.LectureDetailManager;
import com.example.demo.vo.AnswerVo;
import com.example.demo.vo.AskVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

@Repository
public class LectureDetailDao {
	
	public LectureVo getLecture(int lec_no) {
		return LectureDetailManager.getLecture(lec_no);
	}
	
	public CreatorVo getCreator(int lec_no) {
		return LectureDetailManager.getCreator(lec_no);
	}
	
	public List<ReviewVo> getReview(int lec_no) {
		return LectureDetailManager.getReview(lec_no);
	}
	
	public int getReviewCount (int lec_no) {
		return LectureDetailManager.getReviewCount(lec_no);
	}
	
	public List<AskVo> getAsk(int lec_no) {
		return LectureDetailManager.getAsk(lec_no);
	}

	public int getZzimCount (int lec_no) {
		return LectureDetailManager.getZzimCount(lec_no);
	}
	
	public int registerZzim(ZzimVo z) {
		return LectureDetailManager.registerZzim(z);
	}
	
	public int deleteZzim(ZzimVo z) {
		return LectureDetailManager.deleteZzim(z);
	}

	public ZzimVo getZzim(int lec_no) {
		return LectureDetailManager.getZzim(lec_no);
	}
	
	public int insertAsk(AskVo a) {
		return LectureDetailManager.insertAsk(a);
	}
}
