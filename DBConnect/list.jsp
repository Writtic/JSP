<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!-- list.jsp -->
<!-- ȭ�鿡 ����� ȸ������ ��� ��� -->
<!-- 
		1. �ʿ��� ������? ����
		2. DB ���� �� ó��
			- ����̹� �˻�
			- �α���
			- ���� ����
			- ��� �ް�
			- ����� ���� ó��
		3. ����ڿ��� �˸�? ����
 -->
 <%!
 		//request.setCharacterEncoding("euc-kr"); ���Ұ�
 		void print() {
	 		System.out.println("hhh");
	 	}%>
<%
		print();
		request.setCharacterEncoding("euc-kr");
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//����̹� �Ŵ����� ����̹� �˻� �����ÿ��� �α����� �����ش�.
		//�α��� ������ ���������� con�� ����.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from game order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		
		//����ǥ ����
		ResultSet rs = ps.executeQuery();//��ɾ� �ٸ� ����Ʈ���� �ҷ���
		
		//����� rs�� ��� �ִ�...
		//rs.next() �޼ҵ带 �̿��� ������ ���� ���� Ȯ��
%>
<html>
	<head>
		<link href="bootstrap-theme.min.css" rel="stylesheet">
		<link href="bootstrap.min.css" rel="stylesheet">
		<link href="main.css" rel="stylesheet">
		<title>��� ������!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6" align="center">
			<table class="table table-striped">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>���̵�</th>
					<th>����</th>
					<th>������</th>
				</tr>
			</thead>
<%	while(rs.next()){//rs.next() == false �� ����
			//������ �����Ͽ� ȭ�鿡 ǥ��%>
			<!-- 1�پ� ���� ��� -->
			<tbody>
				<tr>
					<td><%=rs.getInt("no") %></td>
					<td><%=rs.getString("id") %></td>
					<td><%=rs.getString("lv") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
			</tbody>
<%	}%>
			</table>
		</div>
		<div class="col-md-3"></div>
	</body>
</html>

<!-- ����� �ڿ� ��� -->
<%
	rs.close();
	ps.close();
	con.close();
%>







