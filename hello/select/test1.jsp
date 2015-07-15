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
			<!-- 나에게 get방식으로 전송 method명시 X -->
			<form method="post">
				<!-- 선택지를 만드는 태그 -->
				<select name="test">
					<!-- 내부 항목 -->
					<%for(int i=1; i<=100; i++){ %>
					<option value="<%=i %> 번"><%=i %> 번
					<%} %>
				</select>
				
				<br><br>
				<textarea name="test2" rows="10" cols="50"></textarea>
				<br><br>
				<!-- submit : form을 전송시키는 버튼 -->
				<input type="submit" value="전송">
			</form>
			<br><br>
			<%request.setCharacterEncoding("euc-kr"); %>
			<h1>전송된 데이터는 "<%=request.getParameter("test") %>" 입니다.</h1>
			<h1>전송된 데이터는 "<%=request.getParameter("test2") %>" 입니다.</h1>
		</div>
	</body>
</html>