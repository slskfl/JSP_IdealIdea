<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="com.ezen.dto.MemberVO"%>
<%@ include file="header.jsp" %> 

<link href="${contextPath}/css/index.css" type="text/css" rel="stylesheet"/>

<!-- 회사 이미지 -->
    <div id=main_image>
        <div class="mainimg">
            <img src="images/main.png" alt="메인이미지" />
        </div>
    </div>

    <!-- 최근 아이템 게시판 -->
    <div class="itempost_latest">
                <div class="itempost">
                    <a href="#">
                        <h4>청년지원 행사</h4>
                        <p>청년들을 응원하기 위한 행사</p>
                        <img class="images" src="images/eventimg1.jpg" alt="이벤트_행사1"/>
                    </a>
                </div>
                <div class="itempost">
                    <a href="#">
                        <h4>아이아이 세미나</h4>
                        <p>아이아이 9번째 세미나</p>
                        <img class="images" src="images/eventimg2.jpg" alt="이벤트_행사2"/>
                    </a>
                </div>
                <div class="itempost">
                    <a href="#">
                        <h4>소문내기 이벤트</h4>
                        <p>소문내기 이벤트 소개</p>
                        <img class="images" src="images/eventimg3.png" alt="이벤트_행사3"/>
                    </a>
                </div>
                <div class="itempost">
                    <a href="#">
                        <h4>아이아이 설명회</h4>
                        <p>중소기업 자매기업 설명회</p>
                        <img class="images" src="images/eventimg4.png" alt="이벤트_행사4"/>
                    </a>
                </div>
    </div>
    <div id="contents">
        <div id="con1">
            <div>
                <h2>Company Infomation</h2>
                <img src="images/maincontent.jpg" alt="회사소개이미지1"/>
                <p>  좋은 아이템을 가진 사람과 좋은 기회를 얻고 싶은 사업가들을 위한 곳입니다. 
                    혹시 사업 아이템은 많은데 실현하지 못한 것이 있나요?
                    또는 새로운 일을 시작하려고 하는데 좋은 사업 아이템이 없으신가요?</p>
                <img src="images/maincontent2.png" alt="회사소개이미지2"/>
                <p> 여러분들의 작성해주신 아이템과 아이템을 필요로 하는 회원을 저희가 정확하게 매칭해드립니다. 
                    일반 회원과 사업가 회원을 신뢰있게 분류하여 더욱 정확한 매칭률을 보여줍니다. </p>
            </div>
        </div>
        <div id="con2">
            <div>
                <h2>Event</h2>
                <div class="event">
                    <a href="#">
                        <img src="images/eventimg1.jpg" alt="이벤트이미지1"/>
                        <h4>청년지원 행사</h4>
                        <p>청년들을 응원하기 위한 행사</p>
                    </a>
                </div>
                <div class="event">
                    <a href="#">
                        <img class="images" src="images/eventimg2.jpg" alt="이벤트_행사2"/>
                        <h4>아이아이 세미나</h4>
                        <p>아이아이 9번째 세미나</p>
                    </a>
                </div>
                <div class="event">
                    <a href="#">
                        <img class="images" src="images/eventimg3.png" alt="이벤트_행사3"/>
                        <h4>소문내기 이벤트</h4>
                        <p>소문내기 이벤트 소개</p>
                    </a>
                </div>
                <div class="event">
                    <a href="#">
                        <img class="images" src="images/eventimg4.png" alt="이벤트_행사4"/>
                        <h4>아이아이 설명회</h4>
                        <p>중소기업 자매기업 설명회</p>
                    </a>
                </div>
            </div>
        </div>
        <div id="con3">
            <div>
                <h2><a href="board.do?command=board_list&boardname=noticeboard">Notice</a></h2>
                <div>
                    <table>
                        <tr class="notice_category">
                            <th>No.</th>
                            <th>Title</th>
                        </tr>
                        <c:forEach var="board" items="${noticeBoardList }">
							<tr>
								<td>${board.num }</td> 
								<td><a href="board.do?command=board_read&num=${board.num}&boardname=noticeboard"/>${board.title}</td>
							</tr>
						</c:forEach>
                    </table>
                </div>
            </div> 
        </div>
        <div id="con4">
            <div>
                <h2>News</h2>
                <div>
                    <table>
                        <tr>
                            <th>No.</th>
                            <th>Title</th>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td><a href="#">'아이아이' ..계약 임박</a></td>
                        </tr>
                        <tr>
                            <td>24</td>
                            <td><a href="#">'아이아이', 2020년 청년친화 강소기업 선정</a></td>
                        </tr>
                        <tr>
                            <td>23</td>
                            <td><a href="#">'아이아이' 등 신입, 경력직 채용</a></td>
                        </tr>
                        <tr>
                            <td>22</td>
                            <td><a href="#">아이아이 서비스 확장 확정</a></td>
                        </tr>
                        <tr>
                            <td>21</td>
                            <td><a href="#">기부금 전달, 아이아이 기업</a></td>
                        </tr>
                        <tr>
                            <td>20</td>
                            <td><a href="#">아이아이, 2020년도 글로벌 히트상품 창출 기업</a></td>
                        </tr>
                    </table>
                </div>
            </div> 
        </div>
    </div>
<%@ include file="./footer.jsp" %> 