package com.jspshop.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Pimg;
import com.jspshop.exception.PimgException;
import com.jspshop.exception.PsizeException;

public class PimgDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public void insert(List<Pimg> list) throws PimgException{
		int result = 0;
		result = session.insert("Pimg.insert", list);
		if(result < 1) {
			throw new PsizeException("사진 등록실패");
		}
	}
}
