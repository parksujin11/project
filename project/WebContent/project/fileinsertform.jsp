<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<!-- 
	 [ 파일 업로드 폼 작성법 ]
	 
	 1. method="post"
	 2. enctype="multipart/form-data"
	 3. <input type="file" />
 -->
<h3>파일 업로드 폼입니다.</h3>
<form action="insert_commons.jsp" method="post" 
	enctype="multipart/form-data">
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
			<label for="myFile">첨부파일</label>
			<input class="form-control" type="text" name="myFile" id="myFile"/>
		</div>
		
		<button type="submit" class="btn btn-primary">확인</button>
	</form>
</form>		
</body>
</html>