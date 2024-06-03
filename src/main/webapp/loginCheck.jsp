<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
	<%
		String validMem = (String) session.getAttribute("ValidMem");
		// 로그인 성공이면 validMem값은 yes 이고, 비로그인 상태면 null값임.
		String sessionId = (String) session.getAttribute("sessionId");
		
		String name ="";
		if(validMem!=null) { // 참이면 로그인상태
			
			out.println(sessionId +"님 로그인 중 +<br>");
		
			Enumeration enuSession =  session.getAttributeNames();  //세션안의 속성들의 이름들을 열거형으로 받아옴
			
			while(enuSession.hasMoreElements()) {
				name = enuSession.nextElement().toString();
				out.println(name + "<br>");
				String sessionVal = (String) session.getAttribute(name);
				out.println(sessionVal + "<br>");
			} 
			
		// } else { // 거짓이면 비로그인상태
		//	out.println("로그인 페이지로 이동하세요.");	
		// } 
	%>
	<br>
	<a href="sessionTest.jsp">세션정보테스트</a>
	<br>
	<a href="logout.jsp">로그아웃</a>
	<br>
	<%
		} else { // 거짓이면 비로그인상태
			out.println("로그인하지 않은 상태임!! 로그인 페이지로 이동하세요.");	
		}
	%>
</body>
</html>