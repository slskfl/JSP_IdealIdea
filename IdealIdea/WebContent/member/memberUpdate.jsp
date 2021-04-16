<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript" src="js/member.js"></script>
</head>
<body>
<form name="frm" method="post" action="member.do">
     <input type="hidden" name="command" value="member_update"/>
        <fieldset class="signup_fieldset">
            <legend>회원 가입</legend>
         <%--  <p>아이디 <input type="text" size="30" name="userid" readonly value="${memberVO.userid }" /></p> --%>
            <p>아이디 <input type="text" size="30" name="userid" readonly value="${ memberVO.userId }" /></p>
            <p>이름 <input type="text" size="10" name="name" value="${memberVO.name }"/></p>
            <p>비밀번호 <input type="password" size="50" name="pw" value="${memberVO.pw }"/></p>
            <p>비밀번호 확인 <input type="password" size="50" name="pw_check" value="${memberVO.pw }"/></p>
            <p>전화번호 <input type="tel" size="20" name="tel" value="${memberVO.tel }"/></p>
            <p>이메일 <input type="text" size="100" name="email" value="${memberVO.email }"/></p>
            <p>주소 <input id="address" type="text" placeholder="주소" size="20" name="address" value="${memberVO.address }"/></p>    
            <p>회원 등급
            <c:choose>
				<c:when test="${memberVO.grade==1}">
					<input type="radio" name="admin" value="1"
					checked="checked"/> 사용자
					<input type="radio" name="admin" value="0"/> 일반 사업가
					<input type="radio" name="admin" value="-1"/> 관리자
				</c:when>
				<c:when test="${memberVO.grade==0}">
					<input type="radio" name="admin" value="1"/> 사용자
					<input type="radio" name="admin" value="0"
					checked="checked"/> 일반 사업가
					<input type="radio" name="admin" value="-1"/> 관리자
				</c:when>
				<c:when test="${memberVO.grade==-1}">
					<input type="radio" name="admin" value="1"/> 사용자
					<input type="radio" name="admin" value="0"/> 일반 사업가
					<input type="radio" name="admin" value="-1"
					checked="checked"/> 관리자
				</c:when>
			</c:choose>
           
            </p>
            <input type="submit" value="확인" onclick="return joinCheck();"/>
			<input type="submit" value="취소"/>
        </fieldset>
    </form>
</body>
</html>