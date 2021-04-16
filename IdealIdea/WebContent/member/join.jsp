<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/member.js"></script>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
<link href="css/join.css" type="text/css" rel="stylesheet"/>
</head>
<body>
  <form name="frm" method="post" action="member.do">
                <input type="hidden" name="command" value="member_join"/>
        <fieldset class="signup_fieldset">
            <legend>회원 가입</legend>
            <p>아이디 <input type="text" size="30" name="userid">
            	<input type="hidden" name="reid" size="30" /> 
                <input id="btn" type="button" value="중복확인" onclick="idCheck();"></p>
            <p>이름 <input type="text" size="10" name="name"></p>
            <p>비밀번호 <input type="password" size="50" name="pw"></p>
            <p>비밀번호 확인 <input type="password" size="50" name="pw_check"></p>
            <p>전화번호 <input type="tel" size="20" name="tel" ></p>
            <p>이메일 <input type="text" size="100" name="email"></p>
            <p>주소 <input id="address" type="text" placeholder="주소" size="20" name="address"></p>    
            <p>회원 등급
            	<input id="rdobtn" type="radio" name="grade" checked="chcked" value="1">일반 사용자
            	<input id="rdobtn" type="radio" name="grade" checked="chcked" value="0">사업가
            	<input id="rdobtn" type="radio" name="grade" checked="chcked" value="-1">관리자
            </p>
            <input type="submit" value="확인" onclick="return joinCheck();"/>
			<input type="submit" value="취소"/>
        </fieldset>
    </form>
</body>
</html>