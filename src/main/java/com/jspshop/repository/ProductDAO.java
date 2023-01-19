package com.jspshop.repository;

import org.apache.ibatis.session.SqlSession;

import com.jspshop.domain.Product;
import com.jspshop.exception.ProductException;

public class ProductDAO {
	private SqlSession session;
	
	public void setSession(SqlSession session) {
		this.session = session;
	}
	
	//예외처리가 아닌 호출자에게 전달
	public int insert(Product product) throws ProductException{
		int result = 0;
		result = session.insert("Product.insert", product);
		if(result < 1) {
			throw new ProductException("상품 등록실패");
		}
		return result;
	}
}
