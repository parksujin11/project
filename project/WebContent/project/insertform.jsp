<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/insertform.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<h3>새글 작성 폼입니다.</h3>
<form action="insert.jsp" method="post">
	<form class="form-inline">
			<div class="form-group">
				<label for="writer">작성자</label>
				<input class="form-control" type="text" name="writer" id="writer"/>
			</div>
	
			<div class="form-group">
				<label for="title">제목</label>
				<input class="form-control" type="text" name="title" id="title"/>
			</div>
			
			<div class="form-group">
				<label for="content">내용</label>
				<input class="form-control" type="text" name="content" id="content" cols="30" rows="10"/>
			</div>
			
			<button type="submit" class="btn btn-primary">저장</button>
		</form>
	</form>
</body>
</html>