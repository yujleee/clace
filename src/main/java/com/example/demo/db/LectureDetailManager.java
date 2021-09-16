package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.AskVo;
import com.example.demo.vo.CreatorVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

public class LectureDetailManager {

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

	public static LectureVo getLecture(int lec_no){
		SqlSession session = factory.openSession();
		LectureVo l = session.selectOne("detail.getLecture", lec_no);
		session.close();
		return l;
	}
	
	public static CreatorVo getCreator(int lec_no){
		SqlSession session = factory.openSession();
		CreatorVo c = session.selectOne("detail.getCreator", lec_no);
		session.close();
		return c;
	}
	
	public static List<ReviewVo> getReview(int lec_no){
		SqlSession session = factory.openSession();
		List<ReviewVo> list = session.selectList("detail.getReview", lec_no);
		session.close();
		return list;
	}
	
	public static int getReviewCount(int lec_no){
		SqlSession session = factory.openSession();
		int cnt = session.selectOne("detail.getReviewCount", lec_no);
		session.close();
		return cnt;
	}
	
	public static List<AskVo> getAsk(int lec_no){
		SqlSession session = factory.openSession();
		List<AskVo> list = session.selectList("detail.getAsk", lec_no);
		session.close();
		return list;
	}
	
	public static int getZzimCount(int lec_no){
		SqlSession session = factory.openSession();
		int cnt = session.selectOne("detail.getZzimCount", lec_no);
		session.close();
		return cnt;
	}
	
	public static int registerZzim(ZzimVo z) {
		SqlSession session = factory.openSession(true);
				
		int re = session.insert("detail.registerZzim", z);
		session.commit();
		session.close();
		return re;
	}
	
	public static ZzimVo getZzim(int lec_no, int mem_no){
		SqlSession session = factory.openSession();
		HashMap map = new HashMap();
		map.put("lec_no", lec_no);
		map.put("mem_no", mem_no);
		ZzimVo z = session.selectOne("detail.getZzim", map);
		session.close();
		return z;
	}
	
	public static int deleteZzim(ZzimVo z) {
		SqlSession session = factory.openSession(true);
		
		int re = session.delete("detail.deleteZzim", z);
		session.close();
		return re;
	}
	
	public static int insertAsk(AskVo a) {
		SqlSession session = factory.openSession(true);
		int re = session.insert("detail.insertAsk", a);
		session.close();
		return re;
	}
}
