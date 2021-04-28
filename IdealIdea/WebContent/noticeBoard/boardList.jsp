<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="com.ezen.dto.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 보기(${boardVO.num})</title>
<link href="${contextPath}css/boardList.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/noticeBoard.js"></script>
</head>
<body>
	<%@ include file="../header.jsp" %> 
	 <div id="con33">
                <h2>Notice</h2>
            	
                <div>
                    <table >
                         <tr class="notice_category">
                            <th>No.</th>
                            <th>Title</th>
                            <th>Writer</th>
                            <th>Date</th>
                            <th>Hits</th>
                        </tr>
                        <c:forEach var="board" items="${boardList }">
							<tr>
								<td>${board.num }</td> 
								<td><a href="board.do?command=board_read&num=${board.num}"/>${board.title}</td> 
								<td>${board.name }</td> 
								<td><fmt:formatDate value="${board.writedate }" /></td> 
								<td>${board.readCount }</td> 
							</tr>
						</c:forEach>
                    </table>
                    
                </div>
                <div class="write">
                <%
            	if(session.getAttribute("loginUserid")==null){ 
            %>
            	<a href="member.do?command=member_login_form">로그인 후 글쓰기</a>
    		<%
    			} else{
    				if(session.getAttribute("loginUserGrade").equals(-1)){
    		%>	
    					<a href="board.do?command=board_write_form&userid=<%=session.getAttribute("loginUserid")%>">글쓰기</a>
    		<%
    				}
    				else{
    		%>
    					<a href="board.do?command=board_list">관리자용 글쓰기</a>
    				
    		<%		}
    			}
			 %>
                	
           		</div>
            </div> 
         
         <%@ include file="../footer.jsp" %> 
