<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기(${boardVO.num})</title>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
<link href="css/boardTable.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/noticeBoard.js"></script>
</head>
<body>
<div id="table_board">
		<h2>게시글 상세 보기</h2>
		<table >
			<tr>
				<th>작성자</th>
				<td>${boardVO.name}</td>
				<th>날짜</th>
				<td><fmt:formatDate value="${boardVO.writedate}" /></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>${boardVO.email}</td>
				<th>조회수</th>
				<td>${boardVO.readCount}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${boardVO.title}</td>
			</tr>
			<tr> 
				<th>내용</th> 
				<td colspan="3">${boardVO.content}</td> 
			</tr>
		</table>
        <div id="btn">
			<input class="btn" type="button" value="게시글 수정"
				onclick="location.href='board.do?command=board_update_form&num=${boardVO.num}'"/>
			<input class="btn" type="button" value="게시글 삭제"
				onclick="return deleteCheck('board.do?command=board_delete&num=${boardVO.num}');"/>
			<input class="btn" type="button" value="게시글 목록"
				onclick="location.href='board.do?command=board_list'"/>
			<input class="btn" type="button" value="게시글 등록"
				onclick="location.href='board.do?command=board_write_form'"/>
        </div>    
    </div>
</body>
</html>