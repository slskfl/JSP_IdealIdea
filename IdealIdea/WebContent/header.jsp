<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.ezen.dao.MemberDAO"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이아이(I.I)</title>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700' rel='stylesheet' type='text/css'>
<link href="${contextPath}/css/common.css" type="text/css" rel="stylesheet"/>
<link href="${contextPath}/css/header.css" type="text/css" rel="stylesheet"/>
<link href="${contextPath}/css/footer.css" type="text/css" rel="stylesheet"/>
</head>
<body>
 <!-- 헤더 영역 -->
    <header id="header">
        <div class="logo">
            <a class="logo_a" href="index.jsp"><img src="images/mainLogo.png" alt="logo" /></a>
        </div>
        <div class="logo_name">
            <h><a class="logo_a"  href="index.jsp">아이아이(I.I)</a></h>
        </div>
        <div>
            <div class="login">
            
            <%
            	if(session.getAttribute("loginUserid")==null){ 
            %>
            	<a href="member.do?command=member_login_form">로그인</a>
    		<%
    			} else{
            %>
            		<%=session.getAttribute("loginUserid")%>님  
					<a href="member.do?command=member_logout">로그아웃</a>
            <%} %>
            </div>
        </div>
    </header>
    <!-- 메뉴바 -->
    <div id="menu_bar">
        <nav>
            <ul>
                <li class="dropdown">
                    <a href="Company1.html" class ="dropbtn">Company</a>
                    <ul class="dropdown_contents">
                        <li><a href="${contextPath}/menu/Company1.jsp">회사 정보</a></li>
                        <li><a href="${contextPath}/menu/Company2.jsp">사업 현황</a></li>
                        <li><a href="${contextPath}/menu/Company3.jsp">조직 구성</a></li>
                        <li><a href="${contextPath}/menu/Company4.jsp">오시는 길</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="PRcenter1.html" class ="dropbtn">PR center</a>
                    <ul class="dropdown_contents">
                        <li><a href="PRcenter1.html">뉴스</a></li>
                        <li><a href="board.do?command=board_list&boardname=noticeboard">공지사항</a></li>
                        <li><a href="PRcenter3.html">이벤트</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="Item1.html" class ="dropbtn">Item</a>
                    <ul class="dropdown_contents">
                        <li><a href="Item1.html">Info.</a></li>
                        <li><a href="board.do?command=board_list&boardname=userboard">Item 소개</a></li>
                        <li><a href="board.do?command=board_list&boardname=businessboard">Community</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="Member1.html" class ="dropbtn">Member</a>
                    <ul class="dropdown_contents">
                         <li>
                    		<% if(session.getAttribute("loginUserid")==null){  %>
                    			<a href="member.do?command=member_login_form">회원정보</a>
                    		<% } else{ %>
                         		<a href="member.do?command=member_update_form&userid=<%=session.getAttribute("loginUserid")%>">회원 정보</a>
                        	<%} %>
                         </li>
                        <li><a href="Member2.html">스크랩</a></li>
                        <li><a href="Member3.html">고객센터</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
