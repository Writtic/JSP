<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>테이블 병합</title>
</head>
	<body>
		<div align="center">
			<!-- 4줄 4칸 테이블 셀병합 -->
			<table border="1" width="500">
				<!-- 1줄 -->
				<tr>
					<th rowspan="2">1-1</th><!-- 기준 -->
					<th>1-2</th>
					<th>1-3</th>
					<th>1-4</th>
				</tr>
				<!-- 2줄 -->
				<tr>

					<th>2-2</th>
					<th>2-3</th>
					<th>2-4</th>
				</tr>
				<!-- 3줄 -->
				<tr>
					<th>3-1</th>
					<th>3-2</th>
					<th>3-3</th>
					<th>3-4</th>
				</tr>
				<!-- 4줄 -->
				<tr>
					<th colspan="4">4-1</th>

				</tr>		
			</table>
		</div>
	</body>
</html>