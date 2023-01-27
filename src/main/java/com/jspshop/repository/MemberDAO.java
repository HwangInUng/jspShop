package com.jspshop.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Member;
import com.jspshop.exception.MemberException;
import com.jspshop.mybatis.MybatisConfig;

public class MemberDAO {
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 로그인 시 회원정보 체크
	public Member selectByLogin(Member accessMember) throws MemberException{
		Member member = sqlSession.selectOne("Member.selectByLogin", accessMember);
		if(member == null) {
			throw new MemberException("회원정보가 일치하지 않습니다.");
		}
		return member;
	}

	// 회원 1명 삭제
	public void delete(int member_idx) {
		if(sqlSession.insert("Member.delete", member_idx) < 1) {
			throw new MemberException("회원 삭제 실패");
		}
		//성공 시 커밋 후 세션 반납
		sqlSession.commit();
	}
	
	// 회원 1명 정보수정
	public void update(Member member) {
		if(sqlSession.insert("Member.update", member) < 1) {
			throw new MemberException("회원 정보수정 실패");
		}
		//성공 시 커밋 후 세션 반납
		sqlSession.commit();
	}
	
	
	// 전체 회원 조회
	public List selectAll() {
		List<Member> list = sqlSession.selectList("Member.selectAll");
		
		return list;
	}
	
	// 회원 1명 등록
	public void insert(Member member) throws MemberException{
		if(sqlSession.insert("Member.insert", member) < 1) {
			throw new MemberException("회원 등록실패");
		}
		//성공 시 커밋 후 세션 반납
		sqlSession.commit();
	}
}
