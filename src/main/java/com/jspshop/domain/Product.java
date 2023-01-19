package com.jspshop.domain;

import lombok.Data;

@Data
public class Product {
	private int product_idx;
	private Category category;
	private String product_name;
	private String brand;
	private int price;
	private int discount;
	private String detail;
}
