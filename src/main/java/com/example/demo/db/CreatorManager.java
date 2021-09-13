package com.example.demo.db;

import java.io.Reader;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.AgeVo;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.CategoryVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.JobVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

public class CreatorManager {
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/example/demo/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
	}
	
	public static MemberVo getMemberInfo(int mem_no) {
		SqlSession session = factory.openSession();
		MemberVo m = session.selectOne("creator.getMemberInfo", mem_no);
		session.close();
		return m;
	}
	
	public static CreatorVo getCreatorInfo(int mem_no) {
		SqlSession session = factory.openSession();
		CreatorVo c = session.selectOne("creator.getCreatorInfo", mem_no);
		session.close();
		return c;
	}
	
	public static int updateCreatorInfo(CreatorVo c) {
		SqlSession session = factory.openSession(true);
		int re = session.update("creator.updateCreatorInfo", c);
		session.close();
		return re;
	}
	
	public static List<CategoryVo> listCategory(){
		SqlSession session = factory.openSession();
		List<CategoryVo> list = session.selectList("creator.categoryList");
		session.close();
		return list;
	}
	public static List<JobVo> listJob(){
		SqlSession session = factory.openSession();
		List<JobVo> list = session.selectList("creator.jobList");
		session.close();
		return list;
	}
	public static List<AgeVo> listAge(){
		SqlSession session = factory.openSession();
		List<AgeVo> list = session.selectList("creator.ageList");
		session.close();
		return list;
	}
	
	
	
}
