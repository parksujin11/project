<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/login_form.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<%
	//로그인후 리다일렉트 이동할 url 주소를 읽어온다. 
	String url=request.getParameter("url");
	if(url==null){//만일 없으면
		//인덱스 페이지로 이동 될수 있도록 
		url=request.getContextPath();
	}
%>
<div>
	<h3>로그인 페이지 입니다.</h3>
	<form action="login.jsp?url=<%=url %>" method="post">
		<div class="form-group">
			<label for="id">ID</label>
			<input class="form-control type="text" name="id" id="id" />
		</div>
		
		<div class="form-group">
			<label for="pwd">Password</label>
			<input class="form-control type="text" name="pwd" id="pwd" />
		</div>
			
		<button type="submit" class="btn btn-primary">로그인하기</button>
	</form>
</div>
</body>
</html>