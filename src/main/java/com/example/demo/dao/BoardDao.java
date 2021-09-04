package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.BoardVo;


@Repository
public class BoardDao {
	
	public List<BoardVo> findAll(){
		return DBManager.listBoard();
	}
	
	public int getNextNo() {
		return DBManager.getNextNo();
	}
	
	public int insert(BoardVo b) {
		return DBManager.insertBoard(b);
	}
	
	public BoardVo getBoard(int no) {
		return DBManager.getBoard(no);
	}
	
	public void updateBrd_viewc(int no) {
		DBManager.updateBrd_viewc(no);
	}


	public int update(BoardVo b) {
		return DBManager.updateBoard(b);
	}
	
	public int delelte(int brd_no,String brd_pwd) {
		return DBManager.deleteBoard(brd_no,brd_pwd);
	}
}











