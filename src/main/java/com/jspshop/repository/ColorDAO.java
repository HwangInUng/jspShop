package com.jspshop.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Color;
import com.jspshop.exception.ColorException;

public class ColorDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	public void insert(List<Color> list) throws ColorException{
		int result = 0;
		result = session.insert("Color.insert", list);
		if(result < 1) {
			throw new ColorException("색상 등록실패");
		}
	}
}
