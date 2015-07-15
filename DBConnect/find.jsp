<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("fid");
		try{				
			if(id == null) throw new Exception();
			if(id.trim().equals("")) throw new Exception();
		}catch(Exception e){
			response.sendRedirect("send.jsp");
			return;
		}

		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//드라이버 매니저는 드라이버 검색 성공시에만 로그인을 도와준다.
		//로그인 성공시 연결정보를 con에 저장.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from game where id=?";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%"+id+"%"); //유사검색
		
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
		<title>찾았습니다!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6"align="center">
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