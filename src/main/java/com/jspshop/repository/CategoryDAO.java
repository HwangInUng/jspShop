package com.jspshop.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Category;
import com.jspshop.mybatis.MybatisConfig;

public class CategoryDAO {
	MybatisConfig config = MybatisConfig.getInstance();
	
	public List selectAll() {
		List<Category> list = null;
		SqlSession session = config.getSqlSession();
		list = session.selectList("Category.selectAll");
		config.release(session);
		
		return list;
	}
}
