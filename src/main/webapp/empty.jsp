<%@page import="java.util.HashSet"%>
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
<title>empty.jsp</title>
</head>
<body>
<c:set var="v1"/>
<c:set var="v2" value="${null}"/>
<c:set var="v3" value=""/>
<c:set var="v4" value="<%=new ArrayList<Integer>()%>"/>
<c:set var="v5" value="<%=new HashSet<Integer>()%>"/>
<c:set var="v6" value="<%=new HashMap<Integer,Integer>()%>"/>
<c:set var="v3" value="0"/>

v0 = "${vo}" | ${empty v0}<br>   
<!-- v0은 없는 변수이기 때문에 그 값도 당연히 null(비어있음) -->
v1 = "${v1}" | ${empty v1}<br>
v2 = "${v2}" | ${empty v2}<br>
v3 = "${v3}" | ${empty v3}<br>
v4 = "${v4}" | ${empty v4}<br>
v5 = "${v5}" | ${empty v5}<br>
v6 = "${v6}" | ${empty v6}<br>
v7 = "${v7}" | ${empty v7}<br>
<!-- empty null인지 아닌지 확인해주는 명령어. java에는 없다
		 해당 변수의 값이 null이면 true를 반환한다. -->

<br>
<hr>
name = ${empty param.name}
					<!-- param으로 변수를 웹브라우저에 넘겨주면 파라미터로 사용할 수 있다.
							 파라미터가 되면 url 부분에서 값을 대입해줄 수 있음
							 ex)  http://localhost:8086/empty.jsp?name=100 -->
</body>
</html>