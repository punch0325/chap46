<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el3.jsp</title>
</head>
<!-- 1) pageScope -->
<!-- 2) requestScope -->
<!-- 3) sessionScope  -->
<!-- 4) applicationScope  -->
<body>
<jsp:useBean id="alpha" class="util.Alpha"/>
<!-- jsp:useBean으로 만든 변수도 EL변수 -->
alpha = ${alpha}<br>
pageScope = ${pageScope.alpha} <br>
pageScope = <%=pageContext.getAttribute("alpha")%>
<hr>
</body>
</html>