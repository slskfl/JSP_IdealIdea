<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조직 구성도</title>
</head>
<body>
<div>
<%@ include file="../header.jsp" %> 
        <form>
            <fieldset class="company_fieldset">
                <legend>조직 구성도</legend>
                <img id="image" src="${pageContext.request.contextPath}/images/II_company3.png" alt="조직 구성도 이미지"/>
            </fieldset>
        </form>
    </div>
<%@ include file="../footer.jsp" %> 