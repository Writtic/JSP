<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- import java.sql.* -->
<%@ page import="java.sql.*" %>
<%
	//데이터 받고 검사
	request.setCharacterEncoding("euc-kr");
	
	String wr = request.getParameter("writer");
	try{				
		if(wr == null) throw new Exception();
		if(wr.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("home.jsp");
		return;
	}
	
	//유효한 데이터를 DB에 전송 후 결과 확인
	
	//드라이버 검색
	Class.forName("oracle.jdbc.driver.OracleDriver");//파일 찾기
	
	//로그인 - 위치, 아이디, 비밀번호
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //위치
	String user = "jsp1"; //아이디
	String pass = "jsp1"; //비밀번호
	
	//DriverManager 클래스가 로그인을 시도하고
	//Connection 클래스에 결과가 보관된다. 임포트 안하면 에러
	Connection con = DriverManager.getConnection(url, user, pass);
	
	//연결이 되었으면 con에는 값이 있고
	//연결이 안됐으면 con은 null이다.
	
	//쿼리문 전송
	String sql = "delete miniboard where writer = ?";
	//연결정보에서 쿼리전송 객체 추출
	//연결이 안되어있으면 객체 생성이 안된다(Error)
	PreparedStatement ps = con.prepareStatement(sql);
	
	//물음표 채우기
	//ps.set자료형(물음표 순서, 데이터);
	ps.setString(1, wr);
	//sql injection에 안정적인 방식!
	
	//실행 -> int형 결과물 (result가 1이면 성공!)
	int result = ps.executeUpdate();
	
	//사용한 도구 폐기
	ps.close();
	con.close();
	
	//3. 사용자에게 결과를 가지고 알려주기
	String msg = "", uri = "";
	if(result > 0){ //성공
		msg = "삭제성공!";
		uri = "list.jsp";
	}else{
		msg = "삭제실패...";
		uri = "home.jsp";
	}
%>
<script type = "text/javascript">
	alert("<%=msg%>");
	location.href="<%=uri%>";
</script>