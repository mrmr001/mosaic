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

<!-- code_assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<c:set var="countrys" value="${page.countrys}" />
	<c:set var="paging" value="${page.paging}" />

	<table class="table table-hover">
		<tr class="alert-info">
			<td>No.</td>
			<td>code</td>
			<td>name</a></td>
			<td>continent</td>
			<td>region</td>
			<td>surfaceArea</td>
			<td>indepYear</td>
			<td>population</td>
			<td>lifeExpectancy</td>
			<td>gnp</td>
			<td>gnpOld</td>
			<td>localName</td>
			<td>governmentForm</td>
			<td>headOfState</td>
			<td>capital</td>
			<td>code2</td>
		</tr>
		<c:forEach var="c" items="${countrys}" varStatus="status">
			<tr  style="text-overflow: ellipsis">
				<td><b>${status.index}</b></td>
				<td>${c.code}</td>
				<td><a href="/country/item/${c.code}?pageNo=${paging.pageNo}">${c.name}</a></td>
				<td>${c.continent}</td>
				<td>${c.region}</td>
				<td>${c.surfaceArea}</td>
				<td>${c.indepYear}</td>
				<td>${c.population}</td>
				<td>${c.lifeExpectancy}</td>
				<td>${c.gnp}</td>
				<td>${c.gnpOld}</td>
				<td>${c.localName}</td>
				<td>${c.governmentForm}</td>
				<td>${c.headOfState}</td>
				<td>${c.capital}</td>
				<td>${c.code2}</td>
			</tr>
		</c:forEach>
	</table>
	<ul class="pagination">
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