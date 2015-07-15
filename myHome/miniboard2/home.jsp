<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- home.jsp : 정보 전송 form을 가진 페이지 -->
<!-- 디렉토리는 그냥 /만 붙여주면 Root(절대경로)를 의미한다. -->
<%@ include file="/top.jsp" %>
<div class="container">

	<h2 class="cover-heading">글 등록</h2>
	<p  class="lead">
	<form action="insert.jsp" method="post">
		<table border="1">
			<tr>
				<th>글쓴이</th>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="content" rows="5" cols="50">
					</textarea>
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="전송">
					<input type="reset" value="다시">
				</td>
			</tr>
		</table>
	</form>
	</p>
	
	<hr color="red" width="250">
	<h2>글 목록</h2>
	<hr color="red" width="250">
	<a href="list.jsp">목록보기</a>
	<input type="button" value="목록보기" onclick="location.href='list.jsp';">
	
	<hr color="red" width="250">
	<h2>글 삭제</h2>
	<hr color="red" width="250">
	
	<!-- 작성자를 입력받아 일치하면 삭제 -->
	<form action="delete.jsp" method="post">
		<table border="1">
			<tr>
				<th>글쓴이</th>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="삭제">
				</td>
			</tr>
		</table>
	</form>
	
	<hr color="red" width="250">
	<h2>글 검색</h2>
	<hr color="red" width="250">
	
	<!-- 입력받은 검색어가 제목+내용에 포함되어있으면 검색 -->
	<form action="find.jsp" method="post">
		<table border="1">
			<tr>
				<th>검색어</th>
				<td>
					<input type="text" name="search">
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="검색">
				</td>
			</tr>
		</table>
	</form>

</div>
<%@ include file="../bottom.jsp" %>