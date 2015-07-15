<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
		request.setCharacterEncoding("euc-kr");
		String s = request.getParameter("search");
		try{	
			if(s == null) throw new Exception();
			if(s.trim().equals("")) throw new Exception();
		}catch(Exception e){
			response.sendRedirect("home.jsp");
			return;
		}

		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//����̹� �Ŵ����� ����̹� �˻� �����ÿ��� �α����� �����ش�.
		//�α��� ������ ���������� con�� ����.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from miniboard" +
							  "where writer like ? or content like ?"+
							  "order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%"+s+"%"); //����˻�
		ps.setString(2, "%"+s+"%"); //����˻�
		
		//����ǥ ����
		ResultSet rs = ps.executeQuery();//��ɾ� �ٸ� ����Ʈ���� �ҷ���
		
		//����� rs�� ��� �ִ�...
		//rs.next() �޼ҵ带 �̿��� ������ ���� ���� Ȯ��
%>
<html>
	<head>
		<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/css/main.css" rel="stylesheet">
		<title>ã�ҽ��ϴ�!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6"align="center">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>��ȣ</th>
						<th>�ۼ���</th>
						<th>����</th>
						<th>������</th>
					</tr>
				</thead>
<%	
	int i=0;
	while(rs.next()){//rs.next() == false �� ����
			//������ �����Ͽ� ȭ�鿡 ǥ��%>
			<!-- 1�پ� ���� ��� -->
			<tbody>
				<tr>
					<td><%=rs.getInt("no") %></td>
					<td><%=rs.getString("writer") %></td>
					<td><%=rs.getString("content") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
			</tbody>
<%	i++;}%>
			</table>
<% if(i==0){ %>
		<div class="container">
      		<div class="starter-template">
        		<h1>�˻� ����� �����ϴ�.</h1>
       			<p class="lead">�˻������� �ٽ� Ȯ���� �ֽñ� �ٶ��ϴ�.</p>
      		</div>
    	</div>
<%} %>
		</div>
		<div class="col-md-3"></div>
	</body>
</html>

<!-- ����� �ڿ� ��� -->
<%
	rs.close();
	ps.close();
	con.close();
%></html>