<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("fid");
		try{				
			if(id == null) throw new Exception();
			if(id.trim().equals("")) throw new Exception();
		}catch(Exception e){
			response.sendRedirect("send.jsp");
			return;
		}

		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//����̹� �Ŵ����� ����̹� �˻� �����ÿ��� �α����� �����ش�.
		//�α��� ������ ���������� con�� ����.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from game where id=?";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%"+id+"%"); //����˻�
		
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
		<title>ã�ҽ��ϴ�!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6"align="center">
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