<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>테이블 연습</title>
	</head>
	<body>
		<!-- tr 줄을 의미
				th, td 칸을 의미 
		-->
		<div align="center">
			<!-- table 태그 : 표의 형식을 표시해주는 태그 -->
			<table border="1" width="80%" height="300"><!-- 비율로 쓰면 창 크기에 그 비율이 맞춰진다. -->
				<!-- tr 태그 : 테이블은 반드시 줄 부터 만들어야 한다. -->
				<tr>
					<!-- th, td 태그 : 줄 안에 칸을 만들고 그 안에 내용을 적는다. -->
					<th>1번째 줄 1번째 칸</th><!-- 1칸 굵은 글씨, 가운데 정렬, 제목 -->
					<td>1번째 줄 2번째 칸</td><!-- 1칸 기본 글씨, 오른쪽 정렬, 내용 -->
				</tr>
			</table>
		</div>
	</body>
</html>