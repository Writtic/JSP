<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
		<div align="center">
			<!-- 200줄 5칸 테이블 생성 : 반복문 사용 -->
			<table border="1" width="500">
			<% for(int i=1; i<=200; i++){ %> <!-- 스크립 트렛(Scriptlet) -->
				<tr>
				<% for(int j=1; j<=5; j++){ %>
					<th><%= i %>-<%= j %></th> <!-- 표현식(Expression) -->
				<% } %>
				</tr>
			<% } %>
			</table>
		</div>
	</body>
</html>