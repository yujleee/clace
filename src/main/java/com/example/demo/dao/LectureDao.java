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
	 
	/**
	 * 강의 번호로 강의 정보를 조회하는 메소드
	 * @param lec_no 강의 번호
	 * @return 강의 정보
	 */
	public LectureVo selectLectureOne(int lec_no) {
		// !TODO 테스트 코드, DB와 연결 필요
		
		LectureVo lectureVo = new LectureVo(); // 변수의 선언과 초기화
		lectureVo.setLec_no(lec_no);
		lectureVo.setLec_name("테스트를 위한 가짜 강의 #01");
		lectureVo.setLec_price(1000); // 세터(setter) 객체의 값을 넣어주는 방식 (쫌 불편한데 왜 굳이 이렇게 하는지) (그 이유는 private를 알아야 한다) (접근제어자) (private, public, protect) // 
		lectureVo.setLec_image(null); // !TODO 이미지 주소가 어떻게 보관되나요?
		
		return lectureVo;
	}
}
