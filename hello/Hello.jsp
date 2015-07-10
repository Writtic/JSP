<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- html(Hyper Text Markup Language)
    		태그 형식으로 구성되는 문서
    		
    		태그는 시작 태그와 종료 태그를 가진다.
    		<html> : 시작 태그
    		</html> : 종료 태그
    		시작 태그와 종료 태그는 하나의 범위를 만들게 된다.
    		시작 태그에는 해당 범위에 적용될 속성을 지정할 수 있다.
    -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>첫 페이지</title>
	</head>
	<body>
		<div align="center"><!-- 자동 완성 기능 자주 활용 -->
			<h1>First</h1>
			박준성<!-- 엔터 불가  <br> or <tr> 사용-->
		</div>
	</body>
</html>


<!-- html 범위 주석 : html 규약을 따르는 모든 페이지에서 사용 가능 (.html, .jsp, .php, .asp, 등)-->
<%-- JSP 범위 주석 : .jsp 에서만 사용 가능--%>

<%
	//자바 코드를 적을 수 있는 공간, 따라서 한줄 및 여러줄 주석 가능
	/*
	
	*/
%>