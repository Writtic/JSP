<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- improt java.sql.* -->
<%@ page import="java.sql.*" %>
<!-- send.jsp에서 넘어오는 데이터를 DB에 저장 -->
<!-- 
		1. 데이터 받기
			- 한글처리? 필요하다면 한다
			- 파라미터 받기
			- 유효성 검사 : 부적합하다면 강퇴(테이블 제약조건)
			
		2. DB 연결 
			- 드라이버 검색 : 파일 + 경로
				파일은 ojdbc6.jar(카페에 있음)
				경로는 oracle.jdbc.driver.OracleDriver
				
			- 로그인 : java.sql.Connection, java.sql.DriverManager
				필요한 정보 : 목적 프로그램 주소, 아이디, 비밀번호
				직접 구현하는 것이 아니라 java.sql 패키지 내용사용
				목적 프로그램 주소(오라클 11g)
				-> jdbc:oracle:thin:@아이피:포트:xe
				-> jdbc:oracle:thin:@localhost:1521:xe
				-> jdbc:oracle:thin:@127.0.0.1:1521:xe
				
			- 쿼리문 전송
				필요한 정보 : 쿼리문(insert, select, update, delete)
				전송 방식 : 정적 전송방식(Statement 클래스) - 구식
									동적 전송방식(PreparedStatement 클래스) - 최신				
				(정적 방식) : 직접 형태 지정
				String id = "박보영";
				String sql = "insert into game values(game_seq.nextval, '"+id+"', ...);
				(동적 방식) : 자바에게 형태 지정을 부탁
				String id = "박보영";
				String sql = "insert into game values(game_seq.nextval, ?, ...);
				
			- 실행 시키고 결과 가져오기
				insert ~ : int 형 결과
				select ~ : ResultSet 자료형 형태
				update ~ : int 형 결과
				delete ~ : int 형 결과
				*위에 네 명령어만 자바에서 실행 가능
		
		3. 결과를 가지고 사용자에게 알려준다.
			- 알림창 또는 목록
-->

<%
	//데이터 받고 검사
	request.setCharacterEncoding("euc-kr");
	
	String id = request.getParameter("id");
	String tmp = request.getParameter("lv");
	int lv = -1;
	try{
		lv = Integer.parseInt(tmp);//문제발생? catch~
				
		if(lv<=0) throw new Exception();
		if(id == null) throw new Exception();
		if(id.trim().equals("")) throw new Exception();
	}catch(Exception e){
		response.sendRedirect("send.jsp");
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
	String sql = "insert into game values" + 
						  "(game_seq.nextval, ?, ?, sysdate)";
	//연결정보에서 쿼리전송 객체 추출
	//연결이 안되어있으면 객체 생성이 안된다(Error)
	PreparedStatement ps = con.prepareStatement(sql);
	
	//물음표 채우기
	//ps.set자료형(물음표 순서, 데이터);
	ps.setString(1, id);
	ps.setInt(2, lv);
	//sql injection에 안정적인 방식!
	
	//실행 -> int형 결과물 (result가 1이면 성공!)
	int result = ps.executeUpdate();
	
	//사용한 도구 폐기
	ps.close();
	con.close();
	
	//3. 사용자에게 결과를 가지고 알려주기
	String msg = "", uri = "";
	if(result > 0){ //성공
		msg = "등록성공!";
		uri = "list.jsp";
	}else{
		msg = "등록실패...";
		uri = "send.jsp";
	}
%>
<script type = "text/javascript">
	alert("<%=msg%>");
	location.href="<%=uri%>";
</script>