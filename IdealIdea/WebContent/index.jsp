<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 메인 페이지에 보여 줄 내용이 없음 >>강제적으로 페이지 이동 */
	 response.sendRedirect("http://localhost:8181/IdealIdea/board.do?command=main");
	%>
</body>
</html>
<!--
 	관리자 아이디 : ryan / 1234 (-1)
 	일반 사용자 아이디 : nohara / 1234 (1)
 	사업가 아이디 : test1 / 1234 (0)
 -->