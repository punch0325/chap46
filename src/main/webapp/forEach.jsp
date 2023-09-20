<%@page import="java.util.Arrays"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach.jsp</title>
</head>
<body>
<%
	Locale[] locales = Locale.getAvailableLocales();
	for(var l : locales)
		System.out.println(l.getDisplayCountry()+" , "+l.getISO3Language());
%>

<c:set var="locales" value="<%=Locale.getAvailableLocales() %>"/>
<c:forEach var="l" items="${locales}" varStatus="status">
     						<!--  items : java의 향상된 for문 처럼 쓸 수 있는 문법 -->
	<c:if test="${l.ISO3Language eq 'kor' }">
		${status.index}.  ${status.count}.  ${l.displayName} ${l.ISO3Language}<br>
	</c:if>
</c:forEach>
</body>
</html>