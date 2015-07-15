<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- insert.jsp : home.jsp에서 넘어온 정보를 MiniDAO에게 시켜서 저장 -->
<%@ page import ="my.miniboard.*" %>
<%
	//데이터 수신
	request.setCharacterEncoding("euc-kr");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	if(writer==null||writer.trim().equals("")||
		content==null||content.trim().equals("")){
		response.sendRedirect("home.jsp");
		return;
	}
	
	//DB 연결 및 처리 -> MiniDAO에게 시킨다.
	
	//MiniDAO의 객체 생성
	miniDAO dao = new miniDAO();
	//한 줄에 처리 끝
	int result = dao.insert(writer, content);
	%>

<!-- 사용자알림 -->
<% if(result>0){  %>
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
	
