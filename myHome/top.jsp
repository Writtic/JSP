<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css" >
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css">
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
     		<div class="container">
      			<div class="navbar-header">
    		    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
   		         		<span class="sr-only">Toggle navigation</span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
          			</button>
          			<a class="navbar-brand" href="<%=request.getContextPath() %>/intro.jsp">My Home</a>
        		</div>
        		<form class="navbar-form navbar-right" action="find.jsp" method="post">
         		   <input type="text" class="form-control" placeholder="Search..." name="search">
          		</form>
       			<div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
          			<ul class="nav navbar-nav">
            			<li class="active"><a href="<%=request.getContextPath() %>/miniboard/home.jsp">Home</a></li>
            			<li><a href="<%=request.getContextPath() %>/intro.jsp">Intro</a></li>
            			<li><a href="<%=request.getContextPath() %>/miniboard/list.jsp">List</a></li>
          			</ul>
        		</div><!--/.nav-collapse -->
      		</div>
    	</nav>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
       	<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
       	<script src="<%=request.getContextPath() %>/js/ie10-viewport-bug-workaround.js"></script>