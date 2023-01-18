package com.jspshop.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConfig {
	private static MybatisConfig instance;
	
	SqlSessionFactory factory;
	
	private MybatisConfig() {
		String resource = "com/resources/config.xml";
		
		InputStream inputStream = null;
		
		try {
			inputStream = Resources.getResourceAsStream(resource);
			
			factory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static MybatisConfig getInstance() {
		if(instance == null) {
			instance = new MybatisConfig();
		}
		return instance;
	}
	
	public SqlSession getSqlSession() {
		return factory.openSession();
	}
	
	public void release(SqlSession session) {
		if(session != null) {
			session.close();
		}
	}
}
