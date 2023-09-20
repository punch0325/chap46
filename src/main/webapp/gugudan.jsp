<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan.jsp</title>
</head>
<body>
<c:forEach var="i" begin="1" end="9">
	<h3>${i}단</h3>
	<ul>
	<c:forEach var="j" begin="1" end="9">
		<c:if test="${j%2==0 }">
			<li style="color:red;">${i} X ${j} = ${i * j}</li>
		</c:if>
		<c:if test="${ j%2!=0}">ㄴ
			<li style="color:blue;">${i} X ${j} = ${i * j}</li>
		</c:if>
	<!-- jstl 태그 조건문의 조건식은 test에 작성하고, 태그 조건문은 else가 없기 때문에
			 조건문을 두번 작성 한다. -->
	</c:forEach>
	</ul>
	<hr>
</c:forEach>
</body>
</html>