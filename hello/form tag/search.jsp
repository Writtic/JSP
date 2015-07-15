<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- search.jsp : 검색어 입력페이지(네이버 메인) -->
<html>
	<head>
		<link href="../bootstrap.min.css" rel="stylesheet">
		<link href="../main.css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>N E V E R</title>
	</head>
	<body>
		<div class="container" align="center">
			<!-- form 태그 : 정보 전송 틀
					input, select, textarea 를 전송시킨다. -->
	<!-- <form action="다음페이지경로" method="전송방법(get, post)"> 
			get : 값이 주소창에 명시됨.(아무 형태든 다 보낼 수 있다.)
			post : 안보이는 공간을 통해 넘어가도록 처리(form이 없으면 값을 못 보냄)-->
			<form class="form-signin" name="f" action="result.jsp" method="post">
				<h1 class="title">N E V E R</h1>
				<!--  input : 입력 받는 태그 -->
				<label for="inputText" class="sr-only">검색어를 입력해주세요.</label>
				<input type="text" id="inputEmail" class="form-control" name="search" placeholder="검색어를 입력해주세요." required><br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">검색</button>
			</form>
		</div>
	</body>
</html>

