<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>EmpList.jsp</title>
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
	<div class="container text-center">
		<table class="table table-hover">
			<tr class="alert-info">
				<td>deptno</td>
				<td>ename</td>
				<td>empno</td>
				<td>job</td>
				<td>mgr</td>
				<td>sal</td>
				<td>hiredate</td>
				<td>comm</td>
				<td><button class="btn btn-info btn-xs" type="button"
						onclick="location.href='/emp/page/${param.pageNo}'">BACK</button></td>
			</tr>
			<tr>
				<td>${emp.deptno}</td>
				<td>${emp.ename}</td>
				<td>${emp.empno}</td>
				<td>${emp.job}</td>
				<td>${emp.mgr}</td>
				<td>${emp.sal}</td>
				<td>${emp.getSimpleDate()}</td>
				<td>${emp.comm}</td>
			</tr>
			<tr class="alert-info">
				<td>deptno</td>
				<td>dname</td>
				<td>loc</td>
			</tr>
			<tr>
				<td>${emp.dept.deptno}</td>
				<td>${emp.dept.dname}</td>
				<td>${emp.dept.loc}</td>
			</tr>
		</table>
	</div>
</body>
</html>