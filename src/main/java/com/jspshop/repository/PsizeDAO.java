package com.jspshop.repository;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Psize;
import com.jspshop.exception.PsizeException;

public class PsizeDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public int insert(Psize psize) throws PsizeException{
		int result = 0;
		result = session.insert("Psize.insert", psize);
		if(result < 1) {
			throw new PsizeException("사이즈 등록실패");
		}
		return result;
	}
}
