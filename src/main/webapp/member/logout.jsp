<%@page import="com.jspshop.util.ResponseMassage"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	session.invalidate();

	out.print(ResponseMassage.getMsgURL("로그아웃 되었습니다.", "/"));
%>