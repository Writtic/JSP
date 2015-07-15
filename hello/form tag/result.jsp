<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- result.jsp : search.jsp에서 넘어오는 데이터를 수신  ip+port+하위경로+데이터
		데이터 = 파라미터(Parameter)
		request에선 파라미터 값을 뽑아오는 것이 주요 작업 -->
<!-- request에 첨부된 parameter 중에서 search를 받는다 -->
<%

	//post 전송 방식일 경우 request를 한글 처리하는 방법(post에서만 적용됨)
	request.setCharacterEncoding("euc-kr");
	//요청 정보에서 search라는 이름의 parameter 1개 추출
	//자바 엔진이 파라미터값을 String으로 변환해서 추출한다.
	String search=request.getParameter("search"); //이름과 변수는 왠만하면 똑같이 맞추길
	//순서 중요. 한글 처리 -> 추출
%>
<h1> 넘어온 데이터 : <%=search %></h1>
<%
	//search가 과연 유효한 데이터인지 검사
	if(search==null){
		System.out.println("문제 발생!");
		response.sendRedirect("search.jsp");//search.jsp로  쫓아내야겠다...
		return;//실행 중지
	}
%>
<!-- 문제 : 검색어에 따라 다른 결과를 보여주세요
		1. 검색어가 "메르스"라면 
		-> 아직도 미쳐 날뛰고 있습니다
		2. 검색어가 "프로야구"라면
		-> NC가 왜이래
		3. 나머지 경우에는
		-> 현재 결과 준비중입니다...-->

<%// ==로 비교 가능한 자료형은 보라색 자료형 
	  if(search.equals("메르스")){ %>
	<h1> 아직도 미쳐 날뛰고 있습니다.</h1>
<% }else if(search.equals("프로야구")){ %>
	<h1> NC가 왜이래</h1>
<% }else{ %>
	<h1> 현재 결과 준비중입니다...</h1>
<% } %>