<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- test01.jsp -->
<!-- 자바와 자바스크립트는 만든 회사도 다르고 완전 다른 언어 -->

<!-- script 태그 : 스크립트 언어를 사용할 수 있는 공간 -->
<!-- 브라우저가 필요한 기능을 구현해주는 부속부품 -->

<script type="text/javascript">
	//기본값이 Javascript이긴 한데 type으로 명시 가능

	//스크립트 작성 공간

	//자료형이 1개뿐이다...(개념은 있지만 표현이 1개 : var)
	var a = 1;
	var b = 'aaa';
	//에러가 나면... 어지간하면 에러코드를 안보여주고 실행을 안한다...
	//좋은점 일단 사용자를 안심시킬 수 있다.
	//문제점 에러가 어디있는지 헉...
	
	//기본적으로 제공되는 내장 객체들이 존재한다.(자바의 내장객체와는 별개)	
	//뒤로가기 앞으로 가기(이력) : history
	//주소창 : location
	//내용물 : document
	//창 전체 : window
	
	//alert("안녕?");==window.alert("안녕?");
	alert(b);
	//주소 변경 : location
	location.href = "../form tag/search.jsp"; //위로가는 기능이..
	
</script>