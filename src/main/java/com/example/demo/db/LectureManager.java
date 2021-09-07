package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.LectureVo;

public class LectureManager {

	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static List<LectureVo> listBestLecture(){
		SqlSession session = factory.openSession();
		List<LectureVo> list = session.selectList("lecture.mainBestLecture");
		session.close();
		return list;
	}


	public static List<LectureVo> listSaleLecture(){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.mainSaleLecture"); 
		session.close(); 
		return list; 
	}

	public static List<LectureVo> listNewLecture(){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.mainNewLecture"); 
		session.close(); 
		return list; 
	}


	public static List<LectureVo> listAroundMe(String place){ 
		SqlSession session = factory.openSession(); 
		System.out.println("매니저: "+place); 
		List<LectureVo> list = session.selectList("lecture.mainAroundMe", place); 
		session.close();
		return list; 
	}


	public static int getTotalLecture() { 
		SqlSession session = factory.openSession(); 
		int n = session.selectOne("lecture.getTotalLecture");
		session.close(); 
		return n; 
	}

	public static int getTotalSaleLecture() { 
		SqlSession session = factory.openSession(); 
		int n = session.selectOne("lecture.getTotalSaleLecture");
		session.close(); 
		return n; 
	}

	public static int getTotalRecommandLecture(int age, String gender, int job) { 
		SqlSession session = factory.openSession(); 
		HashMap map = new HashMap();
		map.put("age_no", age);
		map.put("lec_gender", gender);
		map.put("job_no", job);
		int n = session.selectOne("lecture.getTotalRecommandLecture", map);
		session.close(); 
		return n; 
	}
	
	public static List<LectureVo> listBest(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listBestLecture", map); 
		session.close(); 
		return list;
	}

	public static List<LectureVo> listSale(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listSaleLecture", map); 
		session.close(); 
		return list;
	}
	
	public static List<LectureVo> listNew(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listNewLecture", map); 
		session.close(); 
		return list;
	}
	
	public static List<LectureVo> listRecommand(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listRecommandLecture", map); 
		session.close(); 
		return list;
	}
	
	public static List<LectureVo> listMax(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listMaxLecture", map); 
		session.close(); 
		return list;
	}

	
	public static List<LectureVo> listMin(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listMinLecture", map); 
		session.close(); 
		return list;
	}
	
	
	public static List<LectureVo> listReview(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.listReviewLecture", map); 
		session.close(); 
		return list;
	}
	
	public static List<LectureVo> searchLecture(HashMap map){ 
		SqlSession session = factory.openSession(); 
		List<LectureVo> list = session.selectList("lecture.searchLecture", map); 
		session.close(); 
		return list;
	}
	



	
}
