package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.AnswerVo;
import com.example.demo.vo.AskVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.ReviewVo;

public class AskDetailManager {

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

	public static AskVo getAskInfo(int ask_no){
		SqlSession session = factory.openSession();
		AskVo a = session.selectOne("detail.getAskInfo", ask_no);
		session.close();
		return a;
	}
	
	public static AnswerVo getAnswer(int ask_no){
		SqlSession session = factory.openSession();
		AnswerVo an = session.selectOne("detail.getAnswer", ask_no);
		session.close();
		return an;
	}
}
