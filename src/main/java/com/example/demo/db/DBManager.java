package com.example.demo.db;

import java.io.Reader;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.MemberVo;

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
}
