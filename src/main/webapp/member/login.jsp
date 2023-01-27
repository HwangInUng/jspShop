<%@page import="com.jspshop.exception.MemberException"%>
<%@page import="com.jspshop.util.ResponseMassage"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.jspshop.domain.Member"%>
<%@page import="com.jspshop.repository.MemberDAO"%>
<%@page import="com.jspshop.mybatis.MybatisConfig"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%!
	MybatisConfig mybatisConfig = MybatisConfig.getInstance();
	MemberDAO memberDAO = new MemberDAO();
%>

<%
	request.setCharacterEncoding("utf-8");
	SqlSession sqlSession = mybatisConfig.getSqlSession();
	
	memberDAO.setSqlSession(sqlSession);
	
	Member member = new Member();
	member.setMember_id(request.getParameter("member_id"));
	member.setMember_pass(request.getParameter("member_pass"));
	
	try{
		member = memberDAO.selectByLogin(member);
		session.setAttribute("member", member);
		
		out.print(ResponseMassage.getURL("/"));	
	} catch(MemberException e){
		out.print(ResponseMassage.getMsgBack(e.getMessage()));	
	} finally{
		mybatisConfig.release(sqlSession);
	}
%>