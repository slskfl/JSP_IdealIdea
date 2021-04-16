<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
<link href="css/login.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<form name="frm" method="post" action="member.do">
		<input type="hidden" name="command" value="member_login"/>
        <fieldset class="login_fieldset">
            <legend>로그인</legend>
            <ul id="input_button">
                <li id="id">
                  <ul>
                    <li>
                      <span>ID</span>
                      <input type="text" size="30" name="userid">
                    </li> <!-- id -->
                    <li id="pass">    
                      <span>PW</span>
                      <input type="password" size="50" name="pw">            
                    </li> <!-- pass -->
                  </ul>
                </li>
                <li id="login_btn">
                  <button type="submit" onclick="return loginCheck();">로그인</button>
                </li>
              </ul>    
               ${msg }
              <ul id="btns">
                <li><a href="member.do?command=memder_join_form">회원 가입</a></li>
                <li>비밀번호 찾기</li>
              </ul>
        </fieldset>
    </form>
   
</body>
</html>