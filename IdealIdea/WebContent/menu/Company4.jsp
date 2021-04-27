<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
    <link href="css/Company4.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div>
<%@ include file="../header.jsp" %> 
        <form>
            <fieldset class="company_fieldset">
                <legend>오시는 길</legend>
                <div id="map">
                    <img id="mapimg" src="${contextPath}/images/map.png" alt="지도"/>
                </div>
                <div id="direction">
                    <h3>오시는 길</h3>
                    <p>주소 : 경기도 용인시 기흥구 상하동 20<br>
                    버스 : (시내)66번, 10번, 820번, 690번 <br>(시외)5001번, 5000번, 5600번<br>
                    지하철 : (수인분당선)기흥역, (에버라인 경전철)삼가역</p>
                </div>
            </fieldset>
        </form>
    </div>
<%@ include file="../footer.jsp" %>