<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- check.jsp : ������ �޾Ƽ� ȭ�鿡 ��� -->
<%
		//���� �ޱ�
		//�ѱ� ó��? ok
		request.setCharacterEncoding("euc-kr");

		//������(�Ķ����) �ޱ�
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String gender = request.getParameter("gender");
		
		//�����͸� �޾Ƽ� ����ϱ� ���� ��ȿ�� �˻�
		if(name==null||name.trim().equals("")){
			response.sendRedirect("info.jsp");
			return;
		}
%>	

<%-- <h1>id : <%=id%>, gender : <%=gender%></h1> --%>
<html>
	<head>
		<link href="../bootstrap.min.css" rel="stylesheet">
		<link href="../main.css" rel="stylesheet">
		<title>ȸ������ �䳻����</title>
	</head>
	<body>
		<div align="center">
			<table border="1" width = "300">
				<tr>
					<th width="30%">�̸�</th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th>���̵�</th>
					<td><%=id%></td>
				</tr>
				<tr>
					<th>��й�ȣ</th>
					<td><%=pw%></td>
				</tr>
				<tr>
					<th>����</th>
					<td><%=gender%></td>
				</tr>
			</table>
			<br>
			<br>
			<a href="submit.jsp">Ȯ��</a>
			<a href="info.jsp">���</a>
		</div>
	</body>
</html>

















