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
			<!-- 4줄 4칸 테이블 셀병합 -->
			<table border="1" width="300" height="300">
				<!-- 1줄 -->
				<tr>
					<th rowspan="4">1</th><!-- 기준 -->
					<th rowspan="2">5</th>
					<th colspan="2">4</th>
				</tr>
				<!-- 2줄 -->
				<tr>
					<th>7</th>
					<th rowspan="2">3</th>
				</tr>
				<!-- 3줄 -->
				<tr>
					<th colspan="2">6</th>
				</tr>
				<!-- 4줄 -->
				<tr>
					<th colspan="3">2</th>
				</tr>		
			</table>
		</div>
	</body>
</html>