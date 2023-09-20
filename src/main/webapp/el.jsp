<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el.jsp</title>
</head>
<body>
<%
	var a = new Alpha();
	pageContext.setAttribute("alpha", a);
	
	var b = pageContext.getAttribute("alpha");
%>
<!-- EL은 Scope Object로 지정 된 변수의 값만 출력함 -->
alpha = ${alpha} <br>
a = ${a} <br>
b = ${b}
<hr>
<%
	
   /*Scope Object의 종류*/
	pageContext.setAttribute("num", 100);
	request.setAttribute("num", 200);
	session.setAttribute("num", 300);
// 세션 스코프는 특성 상 웹브라우저가 닫히기 전에는 한번 값이 대입되면 사라지지 않음
	application.setAttribute("num", 400);
	
%>
num=${num} <br>
<%-- Scope Object는 page>request>session>application으로 우선된다
		  줄의 순서를 바꿔도 달라지지 않음 --%>

pageScope = ${pageScope.num}<br>
requestScope = ${requestScope.num}<br>
sessionScope = ${sessionScope.num}<br>
applicationScope = ${applicationScope.num} 
<hr>
</body>
</html>