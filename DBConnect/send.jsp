<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ���� ������ ��� -->

<html>
	<head>
		<title></title>
	</head>
	<body>
		<div align="center">
			<h1>ĳ���� ����</h1>
			<table>
				<form action="insert.jsp" method="post">
					<tr>
						<th>���̵�</th>
						<td>
							<input type="text" name="id">
						</td>
					</tr>
					<tr>
						<th>����</th>
						<td>
							<input type="text" name="lv">
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="���">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>