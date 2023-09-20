<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- select를 이용하여 선택된 알파벳이 블링크 되도록 구현 --%>
<title>blink.jsp</title>
<style type="text/css">
	table{
		border-collapse: collapse;
	}
</style>

<script type="text/javascript">
/*
 * 만든이 : 김은비
    작성일 : 2023/08/28
    과   목 : Spring Boot 응용
 */



/*Blink 클래스 선언*/
class Blink{
	tid =[]; 
	alpha;
	
	constructor(){
		let select = document.querySelector('select');
		this.alpha = select.options[select.selectedIndex].value
		console.log("생성자 호출!"+this.alpha);
	}
	
	/*블링크 특정 알파벳 실행 메소드 run()선언*/
	run(){
		let table = document.querySelector('table');

		for(let i = 0; i<20; i++){
			for(let j=0; j<40; j++){
				let td = table.rows[i].cells[j];
				if(td.innerHTML == this.alpha){
					let id = setInterval(function() {
						if(td.style.visibility=='hidden')
							td.style.visibility = 'visible';
						else
							td.style.visibility = 'hidden';	

					}, Math.random()*500+10);
					this.tid.push(id);
				}
			}
		}
	}

	clear(){
		console.log(this.tid);
		
		for(let id of this.tid)
			clearInterval(id);
		
		console.log("clear()...")
	}
}



	/*자바스크립트 메인 영역 코드*/
	window.onload=function(){
		let start = document.querySelectorAll('button')[0]
		let stop = document.querySelectorAll('button')[1]
		let show = document.querySelectorAll('button')[2]
		let hide = document.querySelectorAll('button')[3]
		let select = document.querySelector('select');
		let table = document.querySelector('table');
		
		
		stop.disabled=true;
		
		let blink;
		
		
		start.onclick = function(){
			blink = new Blink();

			start.disabled=true;
			select.disabled=true;
			stop.disabled=false;
			
			
			blink.run();
			
	
		}
		
		
		stop.onclick = function(){
			start.disabled=false;
			select.disabled=false;
			stop.disabled=true;
			
			blink.clear();
			
		}
		
		
		show.onclick=function(){
			table.style.visibility='visible';
		}

		
		hide.onclick=function(){
			table.style.visibility='hidden';
		}
		
	}

</script>

<script type="text/javascript">

</script>
</head>
<body>
<h1>Alpha Blink</h1>
<button>start</button>

<select>
	<%
		for(var i=0; i<26; i++){
	%>
	<option><%=(char)('A'+i)%></option>
	<%
		}
	%>
</select>

<button>stop</button>
<button>show</button>
<button>hide</button>

<hr>


<table>
	<tbody>
		<%
			for(var i=0; i<20; i++){
		%>
		<tr>
			<% 
					for(var j=0; j<40; j++){
						var a = new Alpha();
			%>
						<td style="color:<%=a.getFg()%>; background:<%=a.getBg()%>; text-align:center;"><%=a.getCh()%></td>
			<%
					}
			%>
		</tr>
		<%
			}
		%>
	</tbody>
</table>
</body>
</html>