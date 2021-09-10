package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.BoardVo;


@Repository
public class BoardDao {
	
	public static int pageSIZE = 10;
	public static int totalRecord;
	public static int totalPage;

	public List<BoardVo> findAll(HashMap map){
		return DBManager.listBoard(map);
	}
	
	public int getNextNo() {
		return DBManager.getNextNo();
	}
	
	public int insert(BoardVo b) {
		return DBManager.insertBoard(b);
	}
	
	public BoardVo getBoard(int brd_no) {
		return DBManager.getBoard(brd_no);
	}
	
	/**조회수 증가 
	 * 
	 * @param no
	 */
	public void updateBrd_viewc(int no) {
		DBManager.updateBrd_viewc(no);
	}


	public int update(BoardVo b) {
		return DBManager.updateBoard(b);
	}
	
	public int delete(int brd_no,String brd_pwd) {
		return DBManager.deleteBoard(brd_no,brd_pwd);
	}
	
	/**
	 * 페이징 처리
	 * @return
	 */
	public int getTotalRecord() {
		return DBManager.getTotalRecord();
	}
}











