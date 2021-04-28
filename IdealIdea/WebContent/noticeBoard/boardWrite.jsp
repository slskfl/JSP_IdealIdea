<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<%@page import="com.ezen.dto.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link href="${contextPath}/css/boardTable.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/noticeBoard.js"></script>
</head>
<body>
<%@ include file="../header.jsp" %> 
<div id="table_board">
        <h2>글쓰기</h2>
            <form name="frm" method="post" action="<%=application.getContextPath() %>/board.do?command=board_write&boardname=${boardname}" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th>작성자</th>
                        <td>
                            <input class="post_info" type="text" size="20" name="name" readonly value="${memberVO.userId }"/>
                        </td>	
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input class="post_info" type="text" size="30" name="email" readonly value="${memberVO.email }"/>
                        </td>	
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td>
                            <input id="title" type="text" size="30"
                            name="title" />
                        </td>	
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>
                            <textarea name="content"></textarea>
                        </td>	
                    </tr>
                    <tr>
                        <th>파일 <br>업로드</th>
                        <td>
                            <input type="file" name="selectFile">
                        </td>	
                    </tr>
                </table>

                <br>
                <div id="btn">
                <input class="btn" type="submit" value="작성 완료" 
                    onclick="return boardCheck();"/>
                <input class="btn" type="reset" value="초기화" />
                <input class="btn" type="button" value="목록"
                    onclick="location.href='board.do?command=board_list&boardname=${boardname}'"/>
                </div>
                </form>
        </div>
<%@ include file="../footer.jsp" %> 