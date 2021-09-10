package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.LectureManager;
import com.example.demo.vo.LectureVo;

@Repository
public class LectureDao {

	public List<LectureVo> listBestLecture() {
		return LectureManager.listBestLecture();
	}

	public List<LectureVo> listSaleLecture() {
		return LectureManager.listSaleLecture();
	}

	public List<LectureVo> listNewLecture() {
		return LectureManager.listNewLecture();
	}

	
	  public List<LectureVo> listAroundMe(String place){ 
		  System.out.println("Dao:"+ place); 
		  return LectureManager.listAroundMe(place); 
	  }
	 

}
