<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- home.jsp : ���� ���� form�� ���� ������ -->
<!-- ���丮�� �׳� /�� �ٿ��ָ� Root(������)�� �ǹ��Ѵ�. -->
<%@ include file="/top.jsp" %>
<div class="container">

	<h2 class="cover-heading">�� ���</h2>
	<p  class="lead">
	<form action="insert.jsp" method="post">
		<table border="1">
			<tr>
				<th>�۾���</th>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td>
					<textarea name="content" rows="5" cols="50">
					</textarea>
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="����">
					<input type="reset" value="�ٽ�">
				</td>
			</tr>
		</table>
	</form>
	</p>
	
	<hr color="red" width="250">
	<h2>�� ���</h2>
	<hr color="red" width="250">
	<a href="list.jsp">��Ϻ���</a>
	<input type="button" value="��Ϻ���" onclick="location.href='list.jsp';">
	
	<hr color="red" width="250">
	<h2>�� ����</h2>
	<hr color="red" width="250">
	
	<!-- �ۼ��ڸ� �Է¹޾� ��ġ�ϸ� ���� -->
	<form action="delete.jsp" method="post">
		<table border="1">
			<tr>
				<th>�۾���</th>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="����">
				</td>
			</tr>
		</table>
	</form>
	
	<hr color="red" width="250">
	<h2>�� �˻�</h2>
	<hr color="red" width="250">
	
	<!-- �Է¹��� �˻�� ����+���뿡 ���ԵǾ������� �˻� -->
	<form action="find.jsp" method="post">
		<table border="1">
			<tr>
				<th>�˻���</th>
				<td>
					<input type="text" name="search">
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="�˻�">
				</td>
			</tr>
		</table>
	</form>

</div>
<%@ include file="../bottom.jsp" %>