package com.jspshop.repository;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Admin;
import com.jspshop.mybatis.MybatisConfig;

public class AdminDAO {
	MybatisConfig config = MybatisConfig.getInstance();
	//관리자 1명 조회
	public Admin select(Admin admin) {
		Admin result = null;
		SqlSession session = config.getSqlSession();
		result = session.selectOne("Admin.select", admin);
		config.release(session);
		
		return result;
	}
}
