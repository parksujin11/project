<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/signup_form.jsp</title>
<link rel="stylesheet" href="../css/bootstrap.css" />
</head>
<body>
<div>
<h3>회원 가입 페이지 입니다.</h3>
	<form action="signup.jsp" method="post"><br/>
		<form class="form-inline">
			<div class="form-group">
				<label for="id">ID</label>
				<input class="form-control" type="text" name="id" id="id"/>
			</div>
	
			<div class="form-group">
				<label for="pwd">Password</label>
				<input class="form-control" type="password" name="pwd" id="pwd"/>
			</div>
			
			<div class="form-group">
				<label for="email">E-mail</label>
				<input class="form-control" type="text" name="email" id="email" />
			</div>
			
			<button type="submit" class="btn btn-primary">가입하기</button>
		</form>
	</form>	
</div>
</body>
</html>