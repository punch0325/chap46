<%@page import="java.util.Arrays"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>triangle.jsp</title>
</head>
<body>
<%--
1. 			2.              	3. 				4. 
*				*****			*****				*
**			  ****			****			  **
***				***			***				***
****			  **			**			  ****
*****				*			*				*****

웹브라우저에서 4가지 모양의 삼각형 별 찍어보기!
 --%>
 
 <%
	for(var i = 1; i<=5; i++){
 		for(var j = 1; j<=i; j++){
	 		System.out.print("*");
 		}
 		System.out.println();
 	}
 %>
 
 <h3>[1번]</h3>
 <c:forEach var="i" begin="1" end="5">
 	<c:forEach var ="j" begin="1" end="${i}">
 		<c:set var="star" value="*"/>
 		${star}
 	</c:forEach>
 	<br>
 </c:forEach>
 <hr>
 
 <h3>[2번]</h3>
  <c:forEach var="i" begin="1" end="5">
 	<c:forEach var ="j" begin="1" end="${i}">
 		<c:set var="star" value="*"/>
 		${star}
 	</c:forEach>
 	<br>
 </c:forEach>
 <hr>
 
  <h3>[3번]</h3>
  <c:forEach var="i" begin="1" end="5">
 	<c:forEach var ="j" begin="1" end="${i}">
 		<c:set var="star" value="*"/>
 		${star}
 	</c:forEach>
 	<br>
 </c:forEach>
 <hr>
 
  <h3>[4번]</h3>
  <c:forEach var="i" begin="1" end="5">
 	<c:forEach var ="j" begin="1" end="${i}">
 		<c:set var="star" value="*"/>
 		${star}
 	</c:forEach>
 	<br>
 </c:forEach>
 <hr>
</body>
</html>