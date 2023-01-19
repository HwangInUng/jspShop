package com.jspshop.util;

public class FileManager {
	// 파일과 관련된 기능을 모아놓은 유틸 클래스

	// 정해진 경로를 이용하여 확장자 추출
	public static String getExt(String path) {
		int index = path.lastIndexOf(".");

		return path.substring(index + 1, path.length());
	}
}
