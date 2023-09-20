<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el2.jsp</title>
</head>
<!-- 1) pageScope -->
<!-- 2) requestScope -->
<!-- 3) sessionScope  -->
<!-- 4) applicationScope  -->
<body>
<c:set var="num1" value="1000"/> 
<!--  num이라는 EL변수를 만들어 100데이터를 대입,
          EL변수는 c:set 또는 scope객체.setAttribute로 만들 수 있음-->
<c:set var="num1" value="2000" scope="request"/>
<c:set var="num1" value="3000" scope="session"/>
<c:set var="num1" value="4000" scope="application"/>

num1 = ${num1}<br>

<hr>


<%-- Scope Object 변수의 값을 가져오는 2가지 방법 --%>
pageScope = ${pageScope.num1}<br>
<!-- EL 변수를 만들때 default로는 pageScope로 생성된다. -->
requestScope = ${requestScope.num1}<br>
sessionScope = ${sessionScope.num1}<br>
applicationScope = ${applicationScope.num1} 

<hr>

pageScope = <%=pageContext.getAttribute("num1")%><br>
requestScope = <%=request.getAttribute("num1")%><br>
sessionScope = <%=session.getAttribute("num1")%><br>
applicationScope = <%=application.getAttribute("num1")%>


</body>
</html>