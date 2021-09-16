package com.example.demo.dao;


import org.springframework.stereotype.Repository;
import com.example.demo.db.DBManager;
import com.example.demo.vo.MemberVo;	
import java.util.List;
import org.springframework.stereotype.Repository;
import com.example.demo.db.MyPageManager;
import com.example.demo.vo.BoardVo;
import com.example.demo.vo.LectureVo;
import com.example.demo.vo.MemberVo;
import com.example.demo.vo.ReviewVo;
import com.example.demo.vo.ZzimVo;

@Repository
public class MemberDao {
	
	public boolean isMember(String mem_id, String mem_pwd) {
		return DBManager.isMember(mem_id,mem_pwd);
	}
	
	
	public MemberVo getMember(String mem_id) {
		return DBManager.getMember(mem_id);
	}
	
	/**
	 * 회원정보를 데이터베이스에 insert하는 메소드
	 * @param m 입력한 멤버정보를 받아올 수 있는 객체
	 * @return
	 */
	public int insertMember(MemberVo m) {
		return DBManager.insertMember(m);
	}
	public int getMem_no() {
		return DBManager.getMem_no();
	}
	
	public MemberVo getMemberInfo(int mem_no) {
		return MyPageManager.getMemberInfo(mem_no);
	}
	
	public int updateMemberInfo(MemberVo m) {
		return MyPageManager.updateMemberInfo(m);
	}
	
	public int deleteMemberInfo(int mem_no) {
		return MyPageManager.deleteMemberInfo(mem_no);
	}
	
	public List<BoardVo> listMyBoard(int mem_no){
		return MyPageManager.listMyBoard(mem_no);
	}
	
	public BoardVo detailMyBoard(int mem_no) {
		return MyPageManager.detailMyBoard(mem_no);
	}
	
	public List<LectureVo> listMyZzimLecture(int mem_no){
		return MyPageManager.listMyZzimLecture(mem_no);
	}
	
	public List<ReviewVo> listMyReview(int mem_no){
		return MyPageManager.listMyReview(mem_no);
	}
	
	public List<LectureVo> listMyLecture(int mem_no){
		return MyPageManager.listMyLecture(mem_no);
	}

	public int insertMyReview(ReviewVo r) {
		return MyPageManager.insertMyReview(r);
	}
	
	public ReviewVo getMyReview(int re_no) {
		return MyPageManager.getMyReview(re_no);
	}
	
	public int updateMyReview(ReviewVo r) {
		return MyPageManager.updateMyReview(r);
	}
	
}
