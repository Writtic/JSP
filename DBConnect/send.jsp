<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 전송 페이지 양식 -->

<html>
	<head>
		<title></title>
	</head>
	<body>
		<div align="center">
			<h1>캐릭터 생성</h1>
			<table>
				<form action="insert.jsp" method="post">
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" name="id">
						</td>
					</tr>
					<tr>
						<th>레벨</th>
						<td>
							<input type="text" name="lv">
						</td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" value="등록">
						</th>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>