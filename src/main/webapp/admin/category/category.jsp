<%@page import="com.google.gson.Gson"%>
<%@page import="com.jspshop.domain.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.jspshop.repository.CategoryDAO"%>
<%@ page contentType="application/json;charset=UTF-8"%>
<%!
	CategoryDAO categoryDAO = new CategoryDAO();
%>

<%
	List<Category> list = categoryDAO.selectAll();

	Gson gson = new Gson();
	String result = gson.toJson(list);
	
	
	System.out.println("-------------------------------------");
	System.out.println("조회한 카테고리의 상태는?" + result);
	System.out.println("-------------------------------------");
	
	out.print(result);
%>