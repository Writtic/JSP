<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- insert.jsp : home.jsp���� �Ѿ�� ������ MiniDAO���� ���Ѽ� ���� -->
<%@ page import ="my.miniboard.*" %>
<%
	//������ ����
	request.setCharacterEncoding("euc-kr");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	if(writer==null||writer.trim().equals("")||
		content==null||content.trim().equals("")){
		response.sendRedirect("home.jsp");
		return;
	}
	
	//DB ���� �� ó�� -> MiniDAO���� ��Ų��.
	
	//MiniDAO�� ��ü ����
	miniDAO dao = new miniDAO();
	//�� �ٿ� ó�� ��
	int result = dao.insert(writer, content);
	%>

<!-- ����ھ˸� -->
<% if(result>0){  %>
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
	
