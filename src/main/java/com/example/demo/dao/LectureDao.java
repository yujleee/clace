package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.LectureManager;
import com.example.demo.vo.CategoryVo;
import com.example.demo.vo.LectureVo;

@Repository
public class LectureDao {
	public static int totalPage;
	public static int totalLecture;
	public static int pageSize = 12;

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
	
	public int getTotalLecture() {
		return LectureManager.getTotalLecture();
	} 
	
	public int getTotalSaleLecture() {
		return LectureManager.getTotalSaleLecture();
	} 
	
	public int getTotalRecommandLecture(int age, String gender, int job) {
		return LectureManager.getTotalRecommandLecture(age, gender, job);
	} 
	
	public int getTotalSearchLecture(String keyword) {
		return LectureManager.getTotalSearchLecture(keyword);
	} 
	
	public int getTotalCategoryLecture(String category) {
		return LectureManager.getTotalCategoryLecture(category);
	} 
	
	public List<LectureVo> listBest(HashMap map){
		return LectureManager.listBest(map);
	}
	
	public List<LectureVo> listSale(HashMap map){
		return LectureManager.listSale(map);
	}
	
	public List<LectureVo> listNew(HashMap map){
		return LectureManager.listNew(map);
	}
	
	public List<LectureVo> listRecommand(HashMap map){
		return LectureManager.listRecommand(map);
	}
	
	public List<LectureVo> listMax(HashMap map){
		return LectureManager.listMax(map);
	}
	
	public List<LectureVo> listMin(HashMap map){
		return LectureManager.listMin(map);
	}
	
	public List<LectureVo> listReview(HashMap map){
		return LectureManager.listReview(map);
	}
	
	public List<LectureVo> searchLecture(HashMap map){
		return LectureManager.searchLecture(map);
	}
	
	public List<LectureVo> categoryLecture(HashMap map){
		return LectureManager.categoryLecture(map);
	}
	
	public List<CategoryVo> listCategory(){
		return LectureManager.listCategory();
	}	

}
