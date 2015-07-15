<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
	//데이터 받고 검사
	request.setCharacterEncoding("euc-kr");
	
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");

	try{				
		if(writer == null) throw new Exception();
		if(content == null) throw new Exception();
		if(writer.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("home.jsp");
		return;
	}
	Class.forName("oracle.jdbc.driver.OracleDriver");//파일 찾기
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //위치
	String user = "jsp1"; //아이디
	String pass = "jsp1"; //비밀번호
	
	Connection con = DriverManager.getConnection(url, user, pass);
	
	String sql = "insert into miniboard values" + 
						  "(game_seq.nextval, ?, ?, sysdate)";

	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, writer);
	ps.setString(2, content);

	int result = ps.executeUpdate();

	ps.close();
	con.close();
	
%>
<%
//사용자알림

 if(result>0){  %>
	<script type="text/javascript">
		alert("등록 성공!");
		location.href="list.jsp";
	</script>
<% }else{ %>
	<script type="text/javascript">
		alert("등록 실패...");
		history.back();//뒤로 1페이지 이동
		//history.go(-1);
	</script>
<% } %>
