<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><sitemesh:write property="title" /></title>
<!-- 1. animate -->
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.min.css">
<!-- 2. bootstrap -->
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
<!-- 3. jquery -->
<script type="text/javascript"
	src="/webjars/jquery/1.11.1/jquery.min.js"></script>
<!-- 4. bootstrap.js -->
<script type="text/javascript"
	src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
<style type="text/css">
/* table { */
/* 	table-layout: fixed; */
/* } */
tr td {
	text-transform: capitalize;
}

.text-center {
	width: 90%;
	margin: auto;
	white-space: nowrap;
	text-overflow: ellipsis;
}
/* .cen { */
/* 	width: 90%; */
/* 	margin: auto; */
/* 	white-space: nowrap; */
/* 	text-overflow: ellipsis; */

/* } */
</style>
<sitemesh:write property="head" />
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Mosaic</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Employee<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/dept/page/1">Dept</a></li>
							<li><a href="/emp/page/1">Emp</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">World<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/country/page/1">Country</a></li>
							<li><a href="/city/page/1">City</a></li>
						</ul></li>
					<li><a href="/city/register">Q & A</a></li>
					<li><a href="#">Documentation</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<%
					String name = (String)session.getAttribute("id");
					if(name !=null){
					out.println("환영! "+name+" 님");
					out.println("<a href='logout'>로그아웃</a>");
					}else{
						%>
					<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
<!-- 					out.println("<a href='login'>로그인</a>"); -->
				<%
					}
				%>
				</ul>
			</div>
		</div>
	</nav>


	<div class="text-center">
		<sitemesh:write property="body" />
	</div>

</body>
</html>













