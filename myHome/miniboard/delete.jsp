<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
	//������ �ް� �˻�
	request.setCharacterEncoding("euc-kr");
	
	String wr = request.getParameter("writer");
	try{				
		if(wr == null) throw new Exception();
		if(wr.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("home.jsp");
		return;
	}
	
	//��ȿ�� �����͸� DB�� ���� �� ��� Ȯ��
	
	//����̹� �˻�
	Class.forName("oracle.jdbc.driver.OracleDriver");//���� ã��
	
	//�α��� - ��ġ, ���̵�, ��й�ȣ
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //��ġ
	String user = "jsp1"; //���̵�
	String pass = "jsp1"; //��й�ȣ
	
	//DriverManager Ŭ������ �α����� �õ��ϰ�
	//Connection Ŭ������ ����� �����ȴ�. ����Ʈ ���ϸ� ����
	Connection con = DriverManager.getConnection(url, user, pass);
	
	//������ �Ǿ����� con���� ���� �ְ�
	//������ �ȵ����� con�� null�̴�.
	
	//������ ����
	String sql = "delete miniboard where writer = ?";
	//������������ �������� ��ü ����
	//������ �ȵǾ������� ��ü ������ �ȵȴ�(Error)
	PreparedStatement ps = con.prepareStatement(sql);
	
	//����ǥ ä���
	//ps.set�ڷ���(����ǥ ����, ������);
	ps.setString(1, wr);
	//sql injection�� �������� ���!
	
	//���� -> int�� ����� (result�� 1�̸� ����!)
	int result = ps.executeUpdate();
	
	//����� ���� ���
	ps.close();
	con.close();
	
	//3. ����ڿ��� ����� ������ �˷��ֱ�
	String msg = "", uri = "";
	if(result > 0){ //����
		msg = "��������!";
		uri = "list.jsp";
	}else{
		msg = "��������...";
		uri = "home.jsp";
	}
%>
<script type = "text/javascript">
	alert("<%=msg%>");
	location.href="<%=uri%>";
</script>