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

<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<c:set var="countrys" 	value="${page.countrys}" />
	<c:set var="paging" 	value="${page.paging}" />
	<div class="table-responsive">
	<table class="table table-hover">
		<!-- 	<table class="table table-hover table-bordered"> -->
		<tr class="alert-info">
			<td>No.</td>
			<td>code</td>
			<td>code2</td>
			<td>name</td>
			<td>localName</td>
			<td>continent</td>
			<td>region</td>
			<td>governmentForm</td>
			<td>headOfState</td>
			<td>surfaceArea</td>
			<td>indepYear</td>
			<td>population</td>
			<td>lifeExpectancy</td>
			<td>gnp</td>
			<td>gnpOld</td>
			<td>capital</td>
			
		</tr>
		<c:forEach var="c" items="${countrys}" varStatus="status">
			<fmt:formatNumber value="${c.surfaceArea}" 	type="number" var="country_surfaceArea"/>
			<fmt:formatNumber value="${c.population}" 	type="number" var="country_population"/>
			<fmt:formatNumber value="${c.gnp}" 			type="number" var="country_gnp"/>
			<fmt:formatNumber value="${c.gnpOld}" 		type="number" var="country_gnpOld"/>
			<tr	onclick="location.href='/country/item/${c.code}?pageNo=${paging.pageNo}'"
				style="cursor: pointer">
				<td><b>${status.index +1}</b></td>
				<td>${c.code}</td>
				<td>${c.code2}</td>
				<td>${c.name}</td>
				<td>${c.localName}</td>
				<td>${c.continent}</td>
				<td>${c.region}</td>
				<td>${c.governmentForm}</td>
				<td>${c.headOfState}</td>
				<td>${country_surfaceArea}</td>
				<td>${c.indepYear}</td>
				<td>${country_population}</td>
				<td>${c.lifeExpectancy}</td>
				<td>${country_gnp}</td>
				<td>${country_gnpOld}</td>
				<td>${c.capital}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	<ul class="pagination ">
		<c:if test="${paging.firstPage != 1 }">
			<li><a href="/country/page/1">first</a></li>
			<li><a href="/country/page/${paging.firstPage - 1}">Prev</a></li>
		</c:if>

		<c:forEach var="i" begin="${paging.firstPage}"
			end="${paging.lastPage}">
			<li><a href="/country/page/${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${paging.lastPage != 24 }">
			<li><a href="/country/page/${paging.lastPage + 1}">Next</a></li>
			<li><a href="/country/page/${paging.totalPage}">last</a></li>
		</c:if>
	</ul>
</body>
</html>