<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<br><br>
	<hr>
	<a href="logout.jsp">로그아웃</a><br><br>
	<a href="login.jsp">로그인페이지로 가기</a>
	
</body>
</html>