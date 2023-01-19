package com.jspshop.domain;

import lombok.Data;

@Data
public class Color {
	private int color_idx;
	private Product product;
	private String color_name;
}
