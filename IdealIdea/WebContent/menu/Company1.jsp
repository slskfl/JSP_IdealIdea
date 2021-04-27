<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사정보</title>
<link href="css/common.css" type="text/css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/company1.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%@ include file="../header.jsp" %> 
 <form id="form">
            <div id="company1">
                <div>
                    <h2>Company Infomation</h2>
                    <img src="${pageContext.request.contextPath}/images/company1_img1.jpg" alt="회사소개이미지1"/>
                    <p>  좋은 아이템을 가진 사람과 좋은 기회를 얻고 싶은 사업가들을 위한 곳입니다. 
                        혹시 사업 아이템은 많은데 실현하지 못한 것이 있나요?
                        또는 새로운 일을 시작하려고 하는데 좋은 사업 아이템이 없으신가요?
                        여러분들의 작성해주신 아이템과 아이템을 필요로 하는 회원을 저희가 정확하게 매칭해드립니다. 
                        일반 회원과 사업가 회원을 신뢰있게 분류하여 더욱 정확한 매칭률을 보여줍니다.</p>
                    <img src="${pageContext.request.contextPath}/images/maincontent2.png" alt="회사소개이미지2"/>
                    <p> 더 좋은 매칭을 통해 도와줌으로써 사업 증진에 기여한다는 경영이념 아래 
                        끊임없는 도전과 혁신을 거듭해왔으며 남들이 가지 않은 길을 개척하며 눈부신 성과를 일궈왔습니다.
                        세계에서 가장 높은 수준의 품질과 경쟁력으로 아시아∙태평양 1위, 세계 4위의 기업으로 성장했고, 
                        중국, 일본, 미국, 독일 등 전세계 28개의 법인과 70여개 국가에 글로벌 판매망을 갖추고 
                        세계 시장을 선도하고 있습니다. </p>
                   
                </div>
            </div>
        </form>
 <%@ include file="../footer.jsp" %> 