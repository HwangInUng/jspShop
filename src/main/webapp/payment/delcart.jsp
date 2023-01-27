<%@page import="com.jspshop.util.ResponseMassage"%>
<%@page import="com.jspshop.domain.Cart"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	String index = request.getParameter("index");

	List<Cart> list = (List)session.getAttribute("cartList");
	
	list.remove(Integer.parseInt(index));
	
	out.print(ResponseMassage.getMsgURL("삭제완료", "/payment/cartlist.jsp"));
%>