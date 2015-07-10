<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- check.jsp : 정보를 받아서 화면에 출력 -->
<%
		//정보 받기
		//한글 처리? ok
		request.setCharacterEncoding("euc-kr");

		//데이터(파라미터) 받기
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		
		//데이터를 받아서 사용하기 전에 유효성 검사
		if(name==null||name.trim().equals("")){
			response.sendRedirect("info.jsp");
			return;
		}
%>	

<%-- <h1>id : <%=id%>, gender : <%=gender%></h1> --%>
<html>
	<head>
		<link href="../bootstrap.min.css" rel="stylesheet">
		<link href="../main.css" rel="stylesheet">
		<title>회원가입 흉내내기</title>
	</head>
	<body>
		<div align="center">
			<table border="1" width = "300">
				<tr>
					<th width="30%">이름</th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><%=id%></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><%=pw%></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><%=gender%></td>
				</tr>
			</table>
			<br>
			<br>
			<a href="submit.jsp">확인</a>
			<a href="info.jsp">취소</a>
		</div>
	</body>
</html>

















