<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
	//������ �ް� �˻�
	request.setCharacterEncoding("euc-kr");
	
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");

	try{				
		if(writer == null) throw new Exception();
		if(content == null) throw new Exception();
		if(writer.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("home.jsp");
		return;
	}
	Class.forName("oracle.jdbc.driver.OracleDriver");//���� ã��
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //��ġ
	String user = "jsp1"; //���̵�
	String pass = "jsp1"; //��й�ȣ
	
	Connection con = DriverManager.getConnection(url, user, pass);
	
	String sql = "insert into miniboard values" + 
						  "(game_seq.nextval, ?, ?, sysdate)";

	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, writer);
	ps.setString(2, content);

	int result = ps.executeUpdate();

	ps.close();
	con.close();
	
%>
<%
//����ھ˸�

 if(result>0){  %>
	<script type="text/javascript">
		alert("��� ����!");
		location.href="list.jsp";
	</script>
<% }else{ %>
	<script type="text/javascript">
		alert("��� ����...");
		history.back();//�ڷ� 1������ �̵�
		//history.go(-1);
	</script>
<% } %>
