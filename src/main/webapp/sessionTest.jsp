<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보테스트</title>
</head>
<body>
	<%
		int sessionTime = session.getMaxInactiveInterval(); //세션유효시간 갖고옴
		out.println("세션의 기본 유효시간:" + sessionTime + "<br>"); // 1800초(30분)
		session.setMaxInactiveInterval(30);
		sessionTime = session.getMaxInactiveInterval();
		out.println("세션의 변경 유효시간:" + sessionTime + "<br>");
	%>
	<hr>
	<%
		long firstTime = session.getCreationTime(); //세션의 생성된 시점 시간
		long lastTime = session.getLastAccessedTime();  //세션의 마지막 사용 시간
		
		long keepTime = (lastTime - firstTime)/60 ;
		out.println("세션유지시간" + keepTime + "<br>");
		
		String session_id = session.getId();
		out.println("세션의 고유아이디"+session_id+ "<br>");
	%>
	<br>
	<a href="loginCheck.jsp">로그인 확인페이지로 가기</a>
</body>
</html>