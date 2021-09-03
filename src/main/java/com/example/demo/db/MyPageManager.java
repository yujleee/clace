package com.example.demo.db;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BoardVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

public class MyPageManager {
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
	//회원정보 수정을 위한 정보를 가지고 옴
	public static MemberVo getMemberInfo(int mem_no) {
		SqlSession session = factory.openSession();
		MemberVo m = session.selectOne("mypage.getMemberInfo", mem_no);
		session.close();
		return m;
	}
	
	//회원정보수정
	public static int updateMemberInfo(MemberVo m) {
		SqlSession session = factory.openSession(true);
		int re = session.update("mypage.updateMemberInfo", m);
		session.close();
		return re;
	}
	
	//회원탈퇴
	public static int deleteMemberInfo(int mem_no) {
		SqlSession session = factory.openSession(true);
		int re = session.delete("mypage.deleteMemberInfo", mem_no);
		session.close();
		return re;
	}
	
	//나의게시물가지고 오기
	public static List<BoardVo> listMyBoard(int mem_no){
		SqlSession session = factory.openSession();
		List<BoardVo> list = session.selectList("mypage.listMyBoard",mem_no);
		session.close();
		return list;
	}
	
	//나의게시물상세
	public static BoardVo detailMyBoard(int mem_no) {
		SqlSession session = factory.openSession();
		BoardVo b = session.selectOne("mypage.detailMyBoard", mem_no);
		session.close();
		return b;
	}
	
	//나의수강찜목록가지고오기
	public static List<LectureVo> listMyZzimLecture(int mem_no){
		SqlSession session = factory.openSession();
		List<LectureVo> list = session.selectList("mypage.listMyZzimLecture",mem_no);
		session.close();
		return list;
	}
	
	//나의리뷰목록 가지고 오기
	public static List<ReviewVo> listMyReview(int mem_no){
		SqlSession session = factory.openSession();
		List<ReviewVo> list = session.selectList("mypage.listMyReview",mem_no);
		session.close();
		return list;
	}
	
}
