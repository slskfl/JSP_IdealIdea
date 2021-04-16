<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
<link href="css/boardTable.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/noticeBoard.js"></script>
</head>
<body>
<div id="table_board">
        <h2>글쓰기</h2>
            <form name="frm" method="post" action="board.do">
                <input type="hidden" name="command" value="board_write"/>
                <table>
                    <tr>
                        <th>작성자</th>
                        <td>
                            <input class="post_info" type="text" size="20" name="name" readonly
                            value="<%=session.getAttribute("loginUserid")%>"/>
                        </td>	
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input class="post_info" type="text" size="30" name="email" />
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
                </table>

                <br>
                <div id="btn">
                <input class="btn" type="submit" value="작성 완료" 
                    onclick="return boardCheck();"/>
                <input class="btn" type="reset" value="초기화" />
                <input class="btn" type="button" value="목록"
                    onclick="location.href='board.do?command=board_list'"/>
                </div>
                </form>
        </div>
</body>
</html>