package com.jspshop.domain;

import lombok.Data;

@Data
public class Cart extends Product{
	//상품(Product)가 미보유한 개수 멤버변수를 추가
	private int ea;
	private Member member;
}
