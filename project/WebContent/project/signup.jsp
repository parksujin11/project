<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/signup.jsp</title>
</head>
<body>
<%
	//1. 폼 전송되는 내용을 읽어와서
	
	//request.setCharacterEncoding("utf-8");->//EncodingFilter 객체 만들었으므로 인코딩 설정하기 때문에 필요없음.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	//2. DB 에 저장
	UsersDao.getInstance().insert(dto);
	//3. 응답
%>
<p><strong><%=id %></strong> 회원님 가입 되었습니다.</p>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a><br>
<a href="${pageContext.request.contextPath }/">정보 수정 하기</a>
</body>
</html>