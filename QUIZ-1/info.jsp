<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
	<head>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link href="main.css" rel="stylesheet">
		<title>회원가입 흉내내기</title>
	</head>
	<body>
		<div class="container">
      		<form class="form-signin">
       			<h2 class="form-signin-heading">회원정보 입력</h2>
       			<label for="inputName" class="sr-only">Name</label>
        		<input type="Name" id="inputName" class="form-control" placeholder="이름" required="" autofocus="">
        		<label for="inputID" class="sr-only">Email address</label>
        		<input type="ID" id="inputID" class="form-control" placeholder="아이디" required="" autofocus="">
        		<label for="inputPassword" class="sr-only">Password</label>
        		<input type="password" id="inputPassword" class="form-control" placeholder="비밀번호" required="">
        		<div class="checkbox">
          			<label>
            			<select name="gender">
							<option value="man">남자</option>
							<option value="woman">여자</option>
						</select>
          			</label>
       		 	</div>
        		<button class="btn btn-lg btn-primary btn-block" type="submit">가입</button>
        		<button class="btn btn-lg btn-primary btn-block" type="reset">초기화</button>
     		 </form>
   		 </div>
		<div align="center">
			<!-- 제목 -->
			<hr width="250" color="green">
			<h1>회원정보 입력</h1>
			<hr width="250" color="green">
			<!-- 5행 2열 테이블 -->
			<form name="f" action="check.jsp" method="post">
			<table border="1">
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="name">
					</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" name="id">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" name="pw">
					</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<select name="gender">
							<option value="man">남자</option>
							<option value="woman">여자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<!-- 폼 전송 태그 -->
						<input type="submit" value="가입">
						<!-- 폼의 내용 초기화 태그 -->
						<input type="reset" value="다시">
					</th>
				</tr>
			</table>
			</form>
		</div>
	</body>
</html>









