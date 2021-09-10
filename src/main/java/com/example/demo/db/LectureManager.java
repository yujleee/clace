package com.example.demo.db;

import java.io.Reader;
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
		List<LectureVo> list = session.selectList("lecture.listBestLecture");
		session.close();
		return list;
	}
	
	
	  public static List<LectureVo> listSaleLecture(){ 
		  SqlSession session = factory.openSession(); 
		  List<LectureVo> list = session.selectList("lecture.listSaleLecture"); 
		  session.close(); 
		  return list; 
	  }
	 
	  public static List<LectureVo> listNewLecture(){ 
		  SqlSession session = factory.openSession(); 
		  List<LectureVo> list = session.selectList("lecture.listNewLecture"); 
		  session.close(); 
		  return list; 
	  }
	  
	
		
	  public static List<LectureVo> listAroundMe(String place){ 
		  SqlSession session = factory.openSession(); System.out.println("매니저: "+place); 
		  List<LectureVo> list = session.selectList("lecture.listAroundMe", place); 
		  session.close();
		  return list; 
	  }
		 
	  
	  
}
