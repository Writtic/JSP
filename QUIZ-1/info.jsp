<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
	<head>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link href="main.css" rel="stylesheet">
		<title>ȸ������ �䳻����</title>
	</head>
	<body>
		<div class="container">
      		<form class="form-signin">
       			<h2 class="form-signin-heading">ȸ������ �Է�</h2>
       			<label for="inputName" class="sr-only">Name</label>
        		<input type="Name" id="inputName" class="form-control" placeholder="�̸�" required="" autofocus="">
        		<label for="inputID" class="sr-only">Email address</label>
        		<input type="ID" id="inputID" class="form-control" placeholder="���̵�" required="" autofocus="">
        		<label for="inputPassword" class="sr-only">Password</label>
        		<input type="password" id="inputPassword" class="form-control" placeholder="��й�ȣ" required="">
        		<div class="checkbox">
          			<label>
            			<select name="gender">
							<option value="man">����</option>
							<option value="woman">����</option>
						</select>
          			</label>
       		 	</div>
        		<button class="btn btn-lg btn-primary btn-block" type="submit">����</button>
        		<button class="btn btn-lg btn-primary btn-block" type="reset">�ʱ�ȭ</button>
     		 </form>
   		 </div>
		<div align="center">
			<!-- ���� -->
			<hr width="250" color="green">
			<h1>ȸ������ �Է�</h1>
			<hr width="250" color="green">
			<!-- 5�� 2�� ���̺� -->
			<form name="f" action="check.jsp" method="post">
			<table border="1">
				<tr>
					<th>�̸�</th>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<th>���̵�</th>
					<td>
						<input type="text" name="id">
					</td>
				</tr>
				<tr>
					<th>��й�ȣ</th>
					<td>
						<input type="password" name="pw">
					</td>
				</tr>
				<tr>
					<th>����</th>
					<td>
						<select name="gender">
							<option value="man">����</option>
							<option value="woman">����</option>
						</select>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<!-- �� ���� �±� -->
						<input type="submit" value="����">
						<!-- ���� ���� �ʱ�ȭ �±� -->
						<input type="reset" value="�ٽ�">
					</th>
				</tr>
			</table>
			</form>
		</div>
	</body>
</html>









