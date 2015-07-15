<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
		request.setCharacterEncoding("euc-kr");
		String s = request.getParameter("search");
		try{	
			if(s == null) throw new Exception();
			if(s.trim().equals("")) throw new Exception();
		}catch(Exception e){
			response.sendRedirect("home.jsp");
			return;
		}

		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//드라이버 매니저는 드라이버 검색 성공시에만 로그인을 도와준다.
		//로그인 성공시 연결정보를 con에 저장.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from miniboard" +
							  "where writer like ? or content like ?"+
							  "order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, "%"+s+"%"); //유사검색
		ps.setString(2, "%"+s+"%"); //유사검색
		
		//물음표 없음
		ResultSet rs = ps.executeQuery();//명령어 다름 리절트셋을 불러옴
		
		//결과는 rs에 들어 있다...
		//rs.next() 메소드를 이용해 데이터 존재 여부 확인
%>
<html>
	<head>
		<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/css/main.css" rel="stylesheet">
		<title>찾았습니다!</title>
	</head>
	<body>
		<div class="col-md-3"></div>
		<div class="col-md-6"align="center">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>내용</th>
						<th>생성일</th>
					</tr>
				</thead>
<%	
	int i=0;
	while(rs.next()){//rs.next() == false 면 종료
			//데이터 추출하여 화면에 표시%>
			<!-- 1줄씩 만들어서 출력 -->
			<tbody>
				<tr>
					<td><%=rs.getInt("no") %></td>
					<td><%=rs.getString("writer") %></td>
					<td><%=rs.getString("content") %></td>
					<td><%=rs.getString("regdate") %></td>
				</tr>
			</tbody>
<%	i++;}%>
			</table>
<% if(i==0){ %>
		<div class="container">
      		<div class="starter-template">
        		<h1>검색 결과가 없습니다.</h1>
       			<p class="lead">검색조건을 다시 확인해 주시기 바랍니다.</p>
      		</div>
    	</div>
<%} %>
		</div>
		<div class="col-md-3"></div>
	</body>
</html>

<!-- 사용한 자원 폐기 -->
<%
	rs.close();
	ps.close();
	con.close();
%></html>