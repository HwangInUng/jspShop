package com.jspshop.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Psize;
import com.jspshop.exception.PsizeException;

public class PsizeDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public void insert(List<Psize> list) throws PsizeException{
		int result = 0;
		result = session.insert("Psize.insert", list);
		if(result < 1) {
			throw new PsizeException("사이즈 등록실패");
		}
	}
}
