<%@page import="com.jspshop.domain.Admin"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
// 현재 접속시도한 클라이언트와 연결된 세션
Admin admin = (Admin) session.getAttribute("admin");
if (admin == null) {
	out.print("세션이 없음");
} else {
	out.print("세션이 있음");
}
%>