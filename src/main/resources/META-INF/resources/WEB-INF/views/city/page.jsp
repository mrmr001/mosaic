<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div class="table-responsive">
	<table class="table table-hover">
		<tr class="alert-info">
			<td>id</td>
			<td>countryCode</td>
			<td>name</td>
			<td>district</td>
			<td>population</td>
		</tr>
		<c:forEach var="city" items="${page.citys}">
				<fmt:formatNumber value="${city.population}" type="number" var="city_pop"/>
			<tr  	onclick="location.href='/city/item/${city.id}?pageNo=${page.paging.pageNo}'"
				style="cursor: pointer">
				<td>${city.id}</td>
				<td>${city.countryCode}</td>
				<td>${city.name}</td>
				<td>${city.district}</td>
				<td>${city_pop}</td>

			</tr>
		</c:forEach>
	</table>

</div>
	<ul class="pagination">
		<c:if test="${page.paging.firstPage != 1 }">
			<li><a href="/city/page/1">First</a></li>
			<li class="previous"><a
				href="/city/page/${page.paging.firstPage - 1}">prev</a></li>
		</c:if>
		<%-- 		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage }"> --%>
		<%-- 			<li><a class="btn btn-default" href="/city/page/${i}">${i} </a></li> --%>
		<%-- 		</c:forEach> --%>
		<c:forEach var="i" begin="${page.paging.firstPage}"
			end="${page.paging.lastPage }">
			<li><a class="btn btn-default" href="/city/page/${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${page.paging.lastPage != 408}">
			<li class="next"><a
				href="/city/page/${page.paging.lastPage + 1}">Next</a></li>
			<li><a href="/city/page/${page.paging.totalPage}">Last</a></li>
		</c:if>
	</ul>
<%-- 	${paging} --%>
<%-- 	<br> ${page.paging.lastPage } --%>
<%-- 	<br> ${page.paging.totalPage} --%>
<!-- 	<br> -->
<!-- 	<a href="/city/page/1">First</a> -->
<%-- 	<a href="/city/page/${page.paging.firstPage - 1}">Prev</a> --%>
<%-- 	<c:forEach var="i" begin="${page.paging.firstPage}" --%>
<%-- 		end="${page.paging.lastPage }"> --%>
<%-- 		<a href="/city/page/${i}">${i}</a> --%>
<%-- 	</c:forEach> --%>
<%-- 	<a href="/city/page/${page.paging.lastPage + 1}">Next</a> --%>
<%-- 	<a href="/city/page/${page.paging.totalPage}">Last</a> --%>





</body>
</html>