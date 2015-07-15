<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- list.jsp : 목록을 표시하는 페이지 -->
<%@ page import="java.sql.*" %>
<%@ include file="../top.jsp" %>
<%
		request.setCharacterEncoding("euc-kr");
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp1", pass = "jsp1";
		//드라이버 매니저는 드라이버 검색 성공시에만 로그인을 도와준다.
		//로그인 성공시 연결정보를 con에 저장.
		Connection con = 
				DriverManager.getConnection(url, user, pass);
		
		String sql = "select * from miniboard order by no asc";
		//ps : PreparedStatement
		PreparedStatement ps = con.prepareStatement(sql);
		
		//물음표 없음
		ResultSet rs = ps.executeQuery();//명령어 다름 리절트셋을 불러옴
		
		//결과는 rs에 들어 있다...
		//rs.next() 메소드를 이용해 데이터 존재 여부 확인
%>
		<div class="col-md-3"></div>
		<div class="col-md-6" align="center">
			<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>생성일</th>
				</tr>
			</thead>
<%	while(rs.next()){//rs.next() == false 면 종료
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
<%	}%>
			</table>
		</div>
		<div class="col-md-3"></div>
<%@ include file="../bottom.jsp" %>
<!-- 사용한 자원 폐기 -->
<%
	rs.close();
	ps.close();
	con.close();
%>

