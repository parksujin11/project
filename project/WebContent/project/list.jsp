
<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/list.jsp</title>

<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<%
	//글 목록 얻어오기 
	List<BoardDto> list=BoardDao.getInstance().getList();
%>
<button><a href="insertform.jsp">새글 작성하기</a></button>
<h3>글 목록입니다.</h3>
    <table class="table table-striped">
        <thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>등록일</th>
		</tr>
		</thead>
		<tbody>
		<%for(BoardDto tmp:list){%>
		<tr>
			<td><%=tmp.getNum() %></td>
			<td><%=tmp.getWriter() %></td>
			<td><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
			<td><%=tmp.getRegdate() %></td>
		</tr>
		<%} %>
	</tbody>
    </table>	
</body>
</html>
