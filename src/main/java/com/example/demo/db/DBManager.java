package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.BoardVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.PaymentVo;

public class DBManager {
	
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
	
	public static boolean isMember(String mem_id,String mem_pwd) {
		boolean re = false;
		SqlSession session = factory.openSession();
		HashMap map = new HashMap();
		map.put("mem_id", mem_id);
		map.put("mem_pwd", mem_pwd);
		System.out.println("isMember의 map"+map);
		MemberVo m = session.selectOne("member.isMember",map);
		if(m != null) {
			re = true;
		}
		session.close();
		return re;
		
	}
	public static MemberVo getMember(String mem_id) {
		SqlSession session = factory.openSession();
		MemberVo m = session.selectOne("member.getMember",mem_id);
		session.close();
		return m;
	}

	public static int insertMember(MemberVo m) {
		SqlSession session = factory.openSession(true);
		int re = session.insert("member.insertMember",m);
		session.close();
		return re;
	}
	
	public static int getMem_no() {
		SqlSession session = factory.openSession();
		int g = session.selectOne("member.getMem_no");
		session.close();
		return g;
	}
	
	//게시판 부분
	 public static List<BoardVo> listBoard(HashMap map){
		SqlSession session = factory.openSession();
		List<BoardVo> list = session.selectList("board.findAll",map);
		session.close();
		return list;
	}
	
	public static int getNextNo() {
		SqlSession session = factory.openSession();
		int no = session.selectOne("board.getNextNo");
		session.close();
		return no;
	}
	
	public static int insertBoard(BoardVo b) {
		SqlSession session = factory.openSession(true);
		int re = session.insert("board.insert", b);
		session.close();
		return re;
	}
	
	public static BoardVo getBoard(int brd_no) {
		SqlSession session = factory.openSession();
		BoardVo b = session.selectOne("board.getBoard", brd_no);
		session.close();
		return b;
	}
	
	/**
	 *  조회수 증가 
	 * @param no
	 */
	public static void updateBrd_viewc(int no) {
		SqlSession session = factory.openSession(true);
		session.update("board.updateBrd_viewc", no);
		session.close();
	}

	
	public static int updateBoard(BoardVo b) {
		//System.out.println("매니저에서:"+b);
		SqlSession session = factory.openSession(true);
		int re = session.update("board.updateBoard", b);
		session.close();
		return re;
	}
	
	public static int deleteBoard(int brd_no, String brd_pwd) {
		SqlSession session = factory.openSession(true);
		HashMap map = new HashMap();
		map.put("brd_no", brd_no);
		map.put("brd_pwd", brd_pwd);
		System.out.println("map:"+map);
		int re = session.delete("board.deleteBoard", map);
		session.close();
		return re;
	}
	 /**
	  * 게시판 페이징
	  * @return
	  */
	public static int getTotalRecord() {
		SqlSession session = factory.openSession();
		int n = session.selectOne("board.totalRecord");
		session.close();
		return n;
	}
	
	/**
	 *  결제 정보 db에 insert
	 * @param p
	 * @return
	 */
	public static int insertPayment(PaymentVo p) {
		SqlSession session = factory.openSession(true);
		int re = session.insert("payment.insertPayment", p);
		session.close();
		return re;
	}
	
	public static int getPay_no() {
		SqlSession session = factory.openSession();
		int p = session.selectOne("payment.getPay_no");
		session.close();
		return p;
	}
	public static PaymentVo getPayment(int pay_no) {
		SqlSession session = factory.openSession();
		PaymentVo p = session.selectOne("payment.getPayment", pay_no);
		session.close();
		return p;
	}
	
}
