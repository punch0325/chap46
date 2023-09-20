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
<title>el6.jsp</title>
</head>
<!-- 1) pageScope -->
<!-- 2) requestScope -->
<!-- 3) sessionScope  -->
<!-- 4) applicationScope  -->
<body>
<h1>EL 산술연산</h1>
1 + 2 = ${ 1 + 2  }<br>
1 + 4 = ${ 1 + 4  }<br>
2 * 3 = ${ 2 * 3  }<br>
100 / 3 = ${ 100 /  3  }<br>
100 - 8 = ${ 100 - 8  }
<hr>

<h1>EL 관계연산</h1>
3 < 5 = ${3 < 5 }<br>
3 <= 5 = ${3 <= 5 }<br>
3 == 5 = ${3 == 5 } | ${3 eq 5}<br>
<hr>

<h1>EL 논리연산</h1>
true && true = ${true&&true} | ${true and true}<br>
false || true = ${false || true} | ${false or true} <br>
!true = ${!true} | ${not true} <br>
10 > 5 ? "참" : "거짓" = ${10 > 5 ? "참" : "거짓"} <br>
10==5 ? "참" : "거짓" = ${10==5 ? "참" : "거짓"} <br>
<hr>

<h1>배열과 리스트</h1>
<%
	String[] lang = {"김","은","비"};
// 자바에서 만드는 변수도 pageContext.setAttribute로 scope 객체(EL변수)로 만들어서 jsp에서 사용가능하다.
	pageContext.setAttribute("lang", lang);
														// " "안에 있는게 scope객체 이름이고 그 뒤가 대입 데이터이다.

	var list = new ArrayList<Integer>();
	list.add(500);
	list.add(300);
	list.add(700);
	pageContext.setAttribute("list", list);
	
	
	var map = new HashMap<String, Integer>();
	map.put("김", 1);
	map.put("은", 2);
	map.put("비", 3);
	pageContext.setAttribute("map",map);
%>
lang[0] = ${lang[0]}<br>
lang[1] = ${lang[1]}<br>
lang[2] = ${lang[2]}<br>
list[0] = ${list[0]}<br>
list[1] = ${list[1]}<br>
list[2] = ${list[2]}<br>
map["김"] = ${map["김"] }<br>
map["은"] = ${map["은"] }<br>
map["비"] = ${map["비"] } 
</body>
</html>