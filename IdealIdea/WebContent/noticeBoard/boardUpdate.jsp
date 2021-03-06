<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<link href="${contextPath}/css/boardTable.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/noticeBoard.js"></script>
</head>
<body>
<%@ include file="../header.jsp" %> 
<div id="table_board">
        <h2>글쓰기</h2>
            <form name="frm" method="post" action="board.do">
                <input type="hidden" name="command" value="board_update&boardname=${boardname }"/>
                <input type="hidden" name="num" value="${boardVO.num }"/>
                <table>
                    <tr>
                        <th>작성자</th>
                        <td>
                            <input class="post_info" type="text" size="20" name="name" 
                            value="${boardVO.name }"/>
                        </td>	
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input class="post_info" type="text" size="20" maxlength="30" name="email" 
                            value="${boardVO.email }"/>
                        </td>	
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td>
                            <input id="title" type="text" size="30" name="title" 
                            value="${boardVO.title }"/>
                        </td>	
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>
                            <textarea rows="20" cols="120" name="content">
                           ${boardVO.content }</textarea>
                        </td>	
                    </tr>
                </table>

                <br>
                <div id="btn">
	                <input class="btn" type="submit" value="수정 완료" 
	                onclick="return updateCheck();"/>
					<input class="btn" type="button" value="목록"
					onclick="location.href='board.do?command=board_list&boardname=${boardname }'"/>
                </div>
                </form>
        </div>
<%@ include file="../footer.jsp" %> 