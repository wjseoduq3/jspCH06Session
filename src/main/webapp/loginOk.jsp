<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
	
		if((mid.equals("tiger")) && (mpw.equals("12345"))) {
			session.setAttribute("sessionId", mid);  //세션에 아이디 올리기
			session.setAttribute("sessionPw", mpw);  //세션에 비번 올리기
			session.setAttribute("ValidMem", "yes"); //로그인 여부만 확인용 값 올리기	
						
			out.println("로그인 성공");
		} else {
			out.println("로그인 실패");		
		}		
	%>
	<br>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>