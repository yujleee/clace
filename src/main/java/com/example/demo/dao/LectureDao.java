package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.db.LectureManager;
import com.example.demo.vo.CategoryVo;
import com.example.demo.vo.LectureVo;

@Repository
public class LectureDao {
	
	public static int pageSize = 12; //한 화면에 보여줄 클래스
	public static int totalLecture;
	public static int totalPage;

	public List<LectureVo> listBestLecture() {
		return LectureManager.listBestLecture();
	}

	public List<LectureVo> listSaleLecture() {
		return LectureManager.listSaleLecture();
	}

	public List<LectureVo> listNewLecture() {
		return LectureManager.listNewLecture();
	}

	

	 
	/**
	 * 강의 번호로 강의 정보를 조회하는 메소드
	 * @param lec_no 강의 번호
	 * @return 강의 정보
	 */
/*	임의로 받아오는 코드 
 * 
 * public LectureVo selectLectureOne(int lec_no) {
		// !TODO 테스트 코드, DB와 연결 필요
		
		LectureVo lectureVo = new LectureVo(); // 변수의 선언과 초기화
		lectureVo.setLec_no(lec_no);
		lectureVo.setLec_name("테스트를 위한 가짜 강의 #01");
		lectureVo.setLec_price(1000); // 세터(setter) 객체의 값을 넣어주는 방식 (쫌 불편한데 왜 굳이 이렇게 하는지) (그 이유는 private를 알아야 한다) (접근제어자) (private, public, protect) // 
		lectureVo.setLec_image(null); // !TODO 이미지 주소가 어떻게 보관되나요?
		
		return lectureVo;
		
		
	}
*/
	
	public List<LectureVo> listAroundMe(String place){ 
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
	
	public List<LectureVo> searchLecture(HashMap map){
		return LectureManager.searchLecture(map);
	}
	
	public List<LectureVo> categoryLecture(HashMap map){
		return LectureManager.categoryLecture(map);
	}
	
	public List<CategoryVo> listCategory(){
		return LectureManager.listCategory();
	}
	
	public LectureVo getLecture(int lec_no) {
		return DBManager.getLecture(lec_no);
	}


}
