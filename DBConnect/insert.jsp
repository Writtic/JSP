<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- send.jsp에서 넘어오는 데이터를 DB에 저장 -->
<!-- 
		1. 데이터 받기
			- 한글처리? 필요하다면 한다
			- 파라미터 받기
			- 유효성 검사 : 부적합하다면 강퇴(테이블 제약조건)
			
		2. DB 연결 
			- 드라이버 검색 : 파일 + 경로
				파일은 ojdbc6.jar(카페에 있음)
				경로는 oracle,jdbc.driver.OracleDriver
				
			- 로그인 : java.sql.Connection, java.sql.DriverManager
				필요한 정보 : 목적 프로그램 주소, 아이디, 비밀번호
				직접 구현하는 것이 아니라 java.sql 패키지 내용사용
				목적 프로그램 주소(오라클 11g)
				-> jdbc:oracle:thin:@아이피:포트:xe
				-> jdbc:oracle:thin:@localhost:1521:xe
				
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