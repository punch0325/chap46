<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el5.jsp</title>
</head>
<!-- 1) pageScope -->
<!-- 2) requestScope -->
<!-- 3) sessionScope  -->
<!-- 4) applicationScope  -->
<body>
<%-- 변수를 출력하는 여러가지 방법들 --%>

<jsp:useBean id="alpha" class="util.Alpha"/>
alpha.line	= ${alpha.line} |	<jsp:getProperty property="line" name="alpha"/>	|	<%=alpha.getLine()%><br>
alpha.col	= ${alpha.col} 	 | <jsp:getProperty property="col" name="alpha"/>	|	<%=alpha.getCol()%><br>
alpha.fg	= ${alpha.fg} 	 | <jsp:getProperty property="fg" name="alpha"/>		|	<%=alpha.getFg()%><br>
alpha.bg	= ${alpha.bg} 	 | <jsp:getProperty property="bg" name="alpha"/>	|	<%=alpha.getBg()%><br>
alpha.ch	= ${alpha.ch} 	 | <jsp:getProperty property="ch" name="alpha"/>	|	<%=alpha.getCh()%><br>
<hr>

<c:set var="alpha2" value="<%=new Alpha()%>"/>
alpha2.line	=  ${alpha2.line}	  |  <%=((Alpha)(pageContext.getAttribute("alpha2"))).getLine()%><br>
alpha2.col	=  ${alpha2.col}	  |  <%=((Alpha)(pageContext.getAttribute("alpha2"))).getCol()%><br>
alpha2.fg		=  ${alpha2.fg} 	  |  <%=((Alpha)(pageContext.getAttribute("alpha2"))).getFg()%><br>
alpha2.bg		=  ${alpha2.bg} 	  |  <%=((Alpha)(pageContext.getAttribute("alpha2"))).getBg()%><br>
alpha2.ch		=  ${alpha2.ch} 	  |  <%=((Alpha)(pageContext.getAttribute("alpha2"))).getCh()%><br>

</body>
</html>