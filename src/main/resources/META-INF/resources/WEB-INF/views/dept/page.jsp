<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>DeptPage.jsp</title>
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>

	<c:set var="depts" value="${page.depts}" />
	<c:set var="paging" value="${page.paging}" />
	
	<table class="table table-hover">
		<tr class="alert-info">
		
			<td>No.</td>
			<td>Deptno</td>
			<td>dname  &nbsp; &nbsp;<button class="btn btn-info btn-xs">추가</button></td>
			<td>loc </td>
		</tr>
		
		<c:forEach var="d" items="${depts}" varStatus="status">
			<tr	onclick="location.href='/dept/item/${d.deptno}?pageNo=${paging.pageNo}'"
				style="cursor: pointer">
				
				<td><b>${status.index +1}</b></td>
				<td>${d.deptno}</td>
				<td>${d.dname}</td>
				<td>${d.loc}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>