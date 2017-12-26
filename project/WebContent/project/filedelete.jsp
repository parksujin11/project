<%@page import="java.io.File"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file/delete.jsp</title>
</head>
<body>
<%
	//삭제할 파일의 번호를 읽어와서
	int num=Integer.parseInt(request.getParameter("num"));
	//삭제할 파일의 저장된 파일명을 읽어온다.
	FileDto dto=FileDao.getInstance().getData(num);
	String saveFileName=dto.getSaveFileName();
	//1. DB에서 삭제하고
	FileDao.getInstance().delete(num);
	//2. 파일 시스템에서 삭제한다.
	//삭제할 파일의 절대 경로 구성하기
	String path=application.getRealPath("/upload")+ File.separator+saveFileName;
	//File 객체생성해서 삭제하기
	new File(path).delete();
	
%>
<script>
	alert("<%=num%>번 파일을 삭제 했습니다.");
	location.href="list.jsp";
</script>
</body>
</html>