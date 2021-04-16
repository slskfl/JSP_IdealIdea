<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.ezen.dao.MemberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
	<form action="member.do" method="get" name="frm"> 
		<input type="hidden" name="command" value="member_idCheck"/>
		아이디<input type="text" name="userid" value="${userid}" /> 
		<input type="submit" value="중복체크"/>
		<br>
		<c:if test="${result==1}" >
		 	${userid}는 사용중인 아이디입니다.<br>
		</c:if>
		<c:if test="${result==-1}" >
		 	${userid}는 사용 가능한 아이디입니다.<br>
		 	<input type="button" value="사용" onclick="idOK();"/>
		 </c:if>	
	</form>
</body>
</html>