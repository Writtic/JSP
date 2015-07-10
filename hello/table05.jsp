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
			<table border="1" width="700">
				<!-- 제목 줄 -->
				<tr>
					<% for(int i=2; i<=9; i++){ %>
					<th><%=i %> 단</th>
					<% } %>
				</tr>
				<% for(int i=1; i<=9; i++){ %>
				<tr>
					<% for(int j=2; j<=9; j++){ %>
					<td><%=j %>*<%=i %>=<%=i*j %></td>
					<% } %>
				</tr>
				<% } %>
			</table>
		</div>
	</body>
</html>