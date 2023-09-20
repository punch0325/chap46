<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el4.jsp</title>
</head>
<!-- 1) pageScope -->
<!-- 2) requestScope -->
<!-- 3) sessionScope  -->
<!-- 4) applicationScope  -->
<body>
<c:forEach var="i" begin="0" end="9">
	${i}<br>
 <!-- i 역시 pageScope로 디폴트 생성된다. -->
</c:forEach>


<!-- jstl 태그 라이브러리는 EL변수를 만들어서 데이터를 대입하고,
         EL은 EL변수로 그 데이터를 읽어서 출력한다. -->
</body>
</html>