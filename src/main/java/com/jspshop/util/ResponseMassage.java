package com.jspshop.util;

public class ResponseMassage {
	
	public static String getMsgURL(String msg, String url) {
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("alert('" + msg + "');");
		sb.append("location.href='" + url + "';");
		sb.append("</script>");
		
		return sb.toString();
	}
	public static String getURL(String url) {
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("location.href='" + url + "';");
		sb.append("</script>");
		
		return sb.toString();
	}
	public static String getMsgBack(String msg) {
		StringBuilder sb = new StringBuilder();
		sb.append("<script>");
		sb.append("alert('" + msg + "');");
		sb.append("history.back();");
		sb.append("</script>");
		
		return sb.toString();
	}
}
