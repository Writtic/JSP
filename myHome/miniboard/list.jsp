<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- list.jsp : ����� ǥ���ϴ� ������ -->
<%@ page import="java.sql.*" %>
<%@ include file="../top.jsp" %>
<%
		request.setCharacterEncoding("euc-kr");
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//����̹� �Ŵ����� ����̹� �˻� �����ÿ��� �α����� �����ش�.
		//�α��� ������ ���������� con�� ����.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from miniboard order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		
		//����ǥ ����
		ResultSet rs = ps.executeQuery();//��ɾ� �ٸ� ����Ʈ���� �ҷ���
		
		//����� rs�� ��� �ִ�...
		//rs.next() �޼ҵ带 �̿��� ������ ���� ���� Ȯ��
%>
		<div class="col-md-3"></div>
		<div class="col-md-6" align="center">
			<table class="table table-striped">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�ۼ���</th>
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
					<td><%=rs.getString("writer") %></td>
					<td><%=rs.getString("content") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
			</tbody>
<%	}%>
			</table>
		</div>
		<div class="col-md-3"></div>
<%@ include file="../bottom.jsp" %>
<!-- ����� �ڿ� ��� -->
<%
	rs.close();
	ps.close();
	con.close();
%>

