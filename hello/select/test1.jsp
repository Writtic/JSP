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
			<!-- ������ get������� ���� method��� X -->
			<form method="post">
				<!-- �������� ����� �±� -->
				<select name="test">
					<!-- ���� �׸� -->
					<%for(int i=1; i<=100; i++){ %>
					<option value="<%=i %> ��"><%=i %> ��
					<%} %>
				</select>
				
				<br><br>
				<textarea name="test2" rows="10" cols="50"></textarea>
				<br><br>
				<!-- submit : form�� ���۽�Ű�� ��ư -->
				<input type="submit" value="����">
			</form>
			<br><br>
			<%request.setCharacterEncoding("euc-kr"); %>
			<h1>���۵� �����ʹ� "<%=request.getParameter("test") %>" �Դϴ�.</h1>
			<h1>���۵� �����ʹ� "<%=request.getParameter("test2") %>" �Դϴ�.</h1>
		</div>
	</body>
</html>