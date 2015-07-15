<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!-- list.jsp -->
<!-- 화면에 저장된 회원들의 목록 출력 -->
<!-- 
		1. 필요한 데이터? 없음
		2. DB 연결 및 처리
			- 드라이버 검색
			- 로그인
			- 쿼리 전송
			- 결과 받고
			- 결과에 따른 처리
		3. 사용자에게 알림? 없음
 -->
 <%!
 		//request.setCharacterEncoding("euc-kr"); 사용불가
 		void print() {
	 		System.out.println("hhh");
	 	}%>
<%
		print();
		request.setCharacterEncoding("euc-kr");
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//드라이버 매니저는 드라이버 검색 성공시에만 로그인을 도와준다.
		//로그인 성공시 연결정보를 con에 저장.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from game order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		
		//물음표 없음
		ResultSet rs = ps.executeQuery();//명령어 다름 리절트셋을 불러옴
		
		//결과는 rs에 들어 있다...
		//rs.next() 메소드를 이용해 데이터 존재 여부 확인
%>
<html>
	<head>
		<link href="bootstrap-theme.min.css" rel="stylesheet">
		<link href="bootstrap.min.css" rel="stylesheet">
		<link href="main.css" rel="stylesheet">
		<title>목록 페이지!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6" align="center">
			<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>레벨</th>
					<th>생성일</th>
				</tr>
			</thead>
<%	while(rs.next()){//rs.next() == false 면 종료
			//데이터 추출하여 화면에 표시%>
			<!-- 1줄씩 만들어서 출력 -->
			<tbody>
				<tr>
					<td><%=rs.getInt("no") %></td>
					<td><%=rs.getString("id") %></td>
					<td><%=rs.getString("lv") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
			</tbody>
<%	}%>
			</table>
		</div>
		<div class="col-md-3"></div>
	</body>
</html>

<!-- 사용한 자원 폐기 -->
<%
	rs.close();
	ps.close();
	con.close();
%>







