<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<h2><strong> jsp 프로젝트 </strong></h2>
<%
	//세션 영역에 "id" 라는 키값으로 저장된 값이 있는지 불러오기
	String id=(String)session.getAttribute("id");

	request.getContextPath();
	
%>
<%if(id != null){ %>
	<p><a href="users/private/info.jsp"><%=id %></a>님 로그인중...</p>
	<a href="users/logout.jsp">로그아웃</a>
<%} %>

<ul>
	<li><a href="project/signup_form.jsp">회원가입하기</a></li>
	<li><a href="project/login_form.jsp?url=${pageContext.request.contextPath }/">로그인하기</a></li>
	<li><a href="project/list.jsp">방명록 목록보기</a></li>
	<li><a href="project/filelist.jsp">파일 목록 보기</a></li>
</ul>
</body>
</html>