<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- search.jsp : �˻��� �Է�������(���̹� ����) -->
<html>
	<head>
		<link href="../bootstrap.min.css" rel="stylesheet">
		<link href="../main.css" rel="stylesheet">
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>N E V E R</title>
	</head>
	<body>
		<div class="container" align="center">
			<!-- form �±� : ���� ���� Ʋ
					input, select, textarea �� ���۽�Ų��. -->
	<!-- <form action="�������������" method="���۹��(get, post)"> 
			get : ���� �ּ�â�� ��õ�.(�ƹ� ���µ� �� ���� �� �ִ�.)
			post : �Ⱥ��̴� ������ ���� �Ѿ���� ó��(form�� ������ ���� �� ����)-->
			<form class="form-signin" name="f" action="result.jsp" method="post">
				<h1 class="title">N E V E R</h1>
				<!--  input : �Է� �޴� �±� -->
				<label for="inputText" class="sr-only">�˻�� �Է����ּ���.</label>
				<input type="text" id="inputEmail" class="form-control" name="search" placeholder="�˻�� �Է����ּ���." required><br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">�˻�</button>
			</form>
		</div>
	</body>
</html>

