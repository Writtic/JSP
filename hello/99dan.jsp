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
			<!-- 200�� 5ĭ ���̺� ���� : �ݺ��� ��� -->
			<table border="1" width="500">
				<tr>
				<% for(int i=2; i<=9; i++){ %>
					<th><%= i %>��</th> <!-- ǥ����(Expression) -->
				<% } %>
				</tr>			
			<% for(int i=2; i<=9; i++){ %> <!-- ��ũ�� Ʈ��(Scriptlet) -->
				<tr>
				<% for(int j=2; j<=9; j++){ %>
					<th><%= j %>*<%= i %>=<%=i*j %></th> <!-- ǥ����(Expression) -->
				<% } %>
				</tr>
			<% } %>
			</table>
		</div>
	</body>
</html>