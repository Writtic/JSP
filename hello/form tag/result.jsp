<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- result.jsp : search.jsp���� �Ѿ���� �����͸� ����  ip+port+�������+������
		������ = �Ķ����(Parameter)
		request���� �Ķ���� ���� �̾ƿ��� ���� �ֿ� �۾� -->
<!-- request�� ÷�ε� parameter �߿��� search�� �޴´� -->
<%

	//post ���� ����� ��� request�� �ѱ� ó���ϴ� ���(post������ �����)
	request.setCharacterEncoding("euc-kr");
	//��û �������� search��� �̸��� parameter 1�� ����
	//�ڹ� ������ �Ķ���Ͱ��� String���� ��ȯ�ؼ� �����Ѵ�.
	String search=request.getParameter("search"); //�̸��� ������ �ظ��ϸ� �Ȱ��� ���߱�
	//���� �߿�. �ѱ� ó�� -> ����
%>
<h1> �Ѿ�� ������ : <%=search %></h1>
<%
	//search�� ���� ��ȿ�� ���������� �˻�
	if(search==null){
		System.out.println("���� �߻�!");
		response.sendRedirect("search.jsp");//search.jsp��  �ѾƳ��߰ڴ�...
		return;//���� ����
	}
%>
<!-- ���� : �˻�� ���� �ٸ� ����� �����ּ���
		1. �˻�� "�޸���"��� 
		-> ������ ���� ���ٰ� �ֽ��ϴ�
		2. �˻�� "���ξ߱�"���
		-> NC�� ���̷�
		3. ������ ��쿡��
		-> ���� ��� �غ����Դϴ�...-->

<%// ==�� �� ������ �ڷ����� ����� �ڷ��� 
	  if(search.equals("�޸���")){ %>
	<h1> ������ ���� ���ٰ� �ֽ��ϴ�.</h1>
<% }else if(search.equals("���ξ߱�")){ %>
	<h1> NC�� ���̷�</h1>
<% }else{ %>
	<h1> ���� ��� �غ����Դϴ�...</h1>
<% } %>