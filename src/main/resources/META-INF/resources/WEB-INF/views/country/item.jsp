<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

</head>
<body>
	<fmt:formatNumber value="${country.surfaceArea}" type="number" 	var="country_surfaceArea" />
	<fmt:formatNumber value="${country.population}"  type="number"  var="country_population" />
	<fmt:formatNumber value="${country.gnp}" type="number" var="country_gnp" />
	<fmt:formatNumber value="${country.gnpOld}" type="number" var="country_gnpOld" />
	<div class="table-responsive">
		<table class="table table-hover">
			<tr class="alert-info"
				onclick="location.href='/country/page/${param.pageNo}'"
				style="cursor: pointer">
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
				<td><button class="btn btn-info btn-xs" type="button"
						onclick="location.href='/country/page/${param.pageNo}'">BACK</button></td>
			</tr>
			<tr>
				<td>${country.code}</td>
				<td>${country.code2}</td>
				<td>${country.name}</td>
				<td>${country.localName}</td>
				<td>${country.continent}</td>
				<td>${country.region}</td>
				<td>${country.governmentForm}</td>
				<td>${country.headOfState}</td>
				<td>${country_surfaceArea}</td>
				<td>${country.indepYear}</td>
				<td>${country_population}</td>
				<td>${country.lifeExpectancy}</td>
				<td>${country_gnp}</td>
				<td>${country_gnpOld}</td>
				<td>${country.capital}</td>
			</tr>
				<tr>
				<td colspan="16"></td>
			</tr>
			<tr class="alert-success">
				<td>countryCode</td>
				<td>id</td>
				<td>name</td>
				<td>district</td>
				<td>population</td>
			</tr>
			<c:forEach var="city" items="${country.citys}">
				<fmt:formatNumber value="${city.population}" type="number" var="country_city_population" />
				<tr>
					<td>${city.countryCode}</td>
					<td>${city.id}</td>
					<td>${city.name}</td>
					<td>${city.district}</td>
					<td>${country_city_population}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>