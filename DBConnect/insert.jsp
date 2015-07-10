<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- improt java.sql.* -->
<%@ page import="java.sql.*" %>
<!-- send.jsp���� �Ѿ���� �����͸� DB�� ���� -->
<!-- 
		1. ������ �ޱ�
			- �ѱ�ó��? �ʿ��ϴٸ� �Ѵ�
			- �Ķ���� �ޱ�
			- ��ȿ�� �˻� : �������ϴٸ� ����(���̺� ��������)
			
		2. DB ���� 
			- ����̹� �˻� : ���� + ���
				������ ojdbc6.jar(ī�信 ����)
				��δ� oracle.jdbc.driver.OracleDriver
				
			- �α��� : java.sql.Connection, java.sql.DriverManager
				�ʿ��� ���� : ���� ���α׷� �ּ�, ���̵�, ��й�ȣ
				���� �����ϴ� ���� �ƴ϶� java.sql ��Ű�� ������
				���� ���α׷� �ּ�(����Ŭ 11g)
				-> jdbc:oracle:thin:@������:��Ʈ:xe
				-> jdbc:oracle:thin:@localhost:1521:xe
				-> jdbc:oracle:thin:@127.0.0.1:1521:xe
				
			- ������ ����
				�ʿ��� ���� : ������(insert, select, update, delete)
				���� ��� : ���� ���۹��(Statement Ŭ����) - ����
									���� ���۹��(PreparedStatement Ŭ����) - �ֽ�				
				(���� ���) : ���� ���� ����
				String id = "�ں���";
				String sql = "insert into game values(game_seq.nextval, '"+id+"', ...);
				(���� ���) : �ڹٿ��� ���� ������ ��Ź
				String id = "�ں���";
				String sql = "insert into game values(game_seq.nextval, ?, ...);
				
			- ���� ��Ű�� ��� ��������
				insert ~ : int �� ���
				select ~ : ResultSet �ڷ��� ����
				update ~ : int �� ���
				delete ~ : int �� ���
				*���� �� ��ɾ �ڹٿ��� ���� ����
		
		3. ����� ������ ����ڿ��� �˷��ش�.
			- �˸�â �Ǵ� ���
-->

<%
	//������ �ް� �˻�
	request.setCharacterEncoding("euc-kr");
	
	String id = request.getParameter("id");
	String tmp = request.getParameter("lv");
	int lv = -1;
	try{
		lv = Integer.parseInt(tmp);//�����߻�? catch~
				
		if(lv<=0) throw new Exception();
		if(id == null) throw new Exception();
		if(id.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("send.jsp");
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
	String sql = "insert into game values" + 
						  "(game_seq.nextval, ?, ?, sysdate)";
	//������������ �������� ��ü ����
	//������ �ȵǾ������� ��ü ������ �ȵȴ�(Error)
	PreparedStatement ps = con.prepareStatement(sql);
	
	//����ǥ ä���
	//ps.set�ڷ���(����ǥ ����, ������);
	ps.setString(1, id);
	ps.setInt(2, lv);
	//sql injection�� �������� ���!
	
	//���� -> int�� ����� (result�� 1�̸� ����!)
	int result = ps.executeUpdate();
	
	//����� ���� ���
	ps.close();
	con.close();
	
	//3. ����ڿ��� ����� ������ �˷��ֱ�
	String msg = "", uri = "";
	if(result > 0){ //����
		msg = "��ϼ���!";
		uri = "list.jsp";
	}else{
		msg = "��Ͻ���...";
		uri = "send.jsp";
	}
%>
<script type = "text/javascript">
	alert("<%=msg%>");
	location.href="<%=uri%>";
</script>